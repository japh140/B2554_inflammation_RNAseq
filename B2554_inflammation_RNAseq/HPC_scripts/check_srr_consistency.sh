#!/bin/bash
#$ -N check_srr_consistency
#$ -cwd
#$ -l h_rt=00:10:00
#$ -l h_vmem=2G
#$ -l rocky
#$ -o logs/
#$ -j y
#$ -M bt24019@qmul.ac.uk
#$ -m abe

echo "[INFO] Starting SRR consistency check at $(date)"

SAMPLE_LIST="tables/sample_list.txt"
METADATA="tables/dataset_metadata.tsv"

# Extract SRR IDs from metadata (skip header)
cut -f2 "$METADATA" | tail -n +2 | sort > metadata_srrs.tmp
sort "$SAMPLE_LIST" > sample_srrs.tmp

# Check if all sample list SRRs exist in metadata
echo "[CHECK] Sample list SRRs not found in metadata:"
comm -23 sample_srrs.tmp metadata_srrs.tmp

# Check if all metadata SRRs are in the sample list
echo ""
echo "[CHECK] Metadata SRRs not found in sample list:"
comm -13 sample_srrs.tmp metadata_srrs.tmp

# Clean up
rm metadata_srrs.tmp sample_srrs.tmp

echo "[INFO] SRR consistency check complete at $(date)"
