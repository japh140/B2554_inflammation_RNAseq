# B2554_inflammation_RNAseq
Investigating dysregulated resolution mechanisms in inflammatory diseases using RNA-seq &amp; Machine Learning

# B2554 RNA-seq & Machine Learning Project  
**Investigating Dysregulated Resolution Mechanisms in Inflammatory Diseases**

## 🔍 Overview  
This project explores bulk and single-cell RNA-seq data from public databases (e.g., GEO) to identify dysregulated resolution mechanisms in inflammatory diseases like rheumatoid arthritis and cardiovascular disease. It combines RNA-seq analysis with machine learning for classification and feature selection.

## 🧪 Objectives  
- Download and organize RNA-seq data
- Perform quality control and preprocessing
- Normalize, filter, and correct for batch effects
- Run differential gene expression (DGE) analysis
- Conduct pathway and enrichment analysis
- Apply machine learning for disease classification
- Interpret results in a biological context

## 📁 Directory Structure

.
├── data
│   ├── processed
│   └── raw
├── docs
├── figures
├── HPC_scripts
├── LICENSE
├── README.md
├── results
├── scripts
│   ├── dge
│   ├── ML
│   ├── pathway_analysis
│   ├── preprocessing
│   ├── qc
│   ├── validation
│   └── visualisations
└── tables


## 🚀 Getting Started  
1. Clone the repo:  
   `git clone git@github.com:japh140/B2554_inflammation_RNAseq.git`  
2. Set up your conda environment (to be added in `/docs`)
3. Run QC and preprocessing scripts on your data via HPC

## 📦 Data Management  
- **Large data** files (FASTQ/BAM): stored only on HPC (`/data/raw`)
- **Metadata** and download links: stored in `/docs`
- **All analysis scripts** are tracked via GitHub in `/scripts`

## 👤 Author  
Japhet Mindana  
MSc Bioinformatics | QMUL  
