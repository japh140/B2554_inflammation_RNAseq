#!/bin/bash
#$ -N check_fastq_duplicates
#$ -cwd
#$ -l h_rt=00:30:00
#$ -l h_vmem=4G
#$ -l rocky
#$ -j y
#$ -o logs/
#$ -M bt24019@qmul.ac.uk
#$ -m abe

# List and count unique filenames
echo "[INFO] Scanning for duplicate .fastq.gz files in data/raw/"
find data/raw -type f -name "*.fastq.gz" -exec basename {} \; | sort | uniq -d > duplicate_fastqs.txt

if [[ -s duplicate_fastqs.txt ]]; then
    echo "[WARNING] Duplicate filenames found:"
    cat duplicate_fastqs.txt
else
    echo "[INFO] No duplicate .fastq.gz filenames detected."
fi
