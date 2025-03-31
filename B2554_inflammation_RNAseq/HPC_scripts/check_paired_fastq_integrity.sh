#!/bin/bash
#$ -N check_paired_fastq_integrity
#$ -cwd
#$ -l h_rt=01:00:00
#$ -l h_vmem=4G
#$ -l rocky
#$ -j y
#$ -o logs/
#$ -M bt24019@qmul.ac.uk
#$ -m abe

echo -e "Sample\t_1_valid\t_2_valid\tBoth_valid" > paired_integrity_report.tsv

# Loop through unique SRR IDs with paired reads
for srr in $(ls data/raw/*_1.fastq.gz 2>/dev/null | sed 's/_1.fastq.gz//' | xargs -n1 basename | sort -u); do
    fq1="data/raw/${srr}_1.fastq.gz"
    fq2="data/raw/${srr}_2.fastq.gz"

    # Default statuses
    valid1="NO"
    valid2="NO"
    both="NO"

    # Check file 1
    if [[ -f "$fq1" && -s "$fq1" ]]; then
        gunzip -t "$fq1" 2>/dev/null && valid1="YES"
    fi

    # Check file 2
    if [[ -f "$fq2" && -s "$fq2" ]]; then
        gunzip -t "$fq2" 2>/dev/null && valid2="YES"
    fi

    # Check both
    if [[ "$valid1" == "YES" && "$valid2" == "YES" ]]; then
        both="YES"
    fi

    echo -e "${srr}\t${valid1}\t${valid2}\t${both}" >> paired_integrity_report.tsv
done

echo "[INFO] Paired-end FASTQ integrity check completed. Results saved to: paired_integrity_report.tsv"
