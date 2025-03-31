#!/bin/bash
#$ -N sra_download                          # Job name
#$ -cwd                                     # Run in current working dir
#$ -l h_rt=02:00:00                         # Max runtime per SRR
#$ -l h_vmem=8G                             # Memory per task
#$ -pe smp 4                                # Use 4 cores
#$ -j y                                     # Join stdout and stderr
#$ -o logs/                                 # Write logs to logs/ folder
#$ -t 1-186                                 # Job array: 1 job per SRR (you have 195)
#$ -l rocky                                 # Run on Rocky 9 nodes
#$ -M bt24019@qmul.ac.uk                    # Email for notifications
#$ -m abe                                   # Email on (a)rrival, (b)egin, (e)rror

# Load SRA Toolkit
module load sra-tools/3.0.3-gcc-12.2.0

# Get the SRR ID for this task
SRR_ID=$(sed -n "${SGE_TASK_ID}p" tables/sample_list.txt)

# Output directory (points to scratch via symlink)
FASTQ_DIR="data/raw"
mkdir -p "$FASTQ_DIR"

echo "[INFO] Starting download for $SRR_ID at $(date)"

# Download .sra to node-local temp storage
prefetch "$SRR_ID" --output-directory "$TMPDIR"

# Convert .sra to FASTQ using 4 threads
fasterq-dump "$TMPDIR/$SRR_ID" -O "$FASTQ_DIR" --split-files -e 4

# Compress FASTQ files
gzip "$FASTQ_DIR/${SRR_ID}"_*.fastq

echo "[INFO] Finished processing $SRR_ID at $(date)"
