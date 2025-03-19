# 📝 Literature Summaries – B2554 Project

This file contains summaries of key literature relevant to inflammation resolution mechanisms in atherosclerosis, with an emphasis on genes, SPMs, and transcriptomic findings.

---

### [Kotlyarov & Kotlyarova, 2022] – *Molecular Pharmacology of Inflammation Resolution in Atherosclerosis*

**Study Type**: Narrative Review  

**Focus**:  
- Discusses unresolved inflammation in atherosclerosis due to imbalance between pro-inflammatory mediators and specialized pro-resolving mediators (SPMs).
- Introduces the concept of "resolution pharmacology" and SPM-based therapeutic strategies.

**Key Genes/Enzymes**:  
- **ALOX5** – produces leukotrienes and lipoxins depending on subcellular localization.  
- **ALOX15** – generates lipoxins, resolvins, protectins from omega-3 PUFAs.  
- **PTGS2 (COX-2)** – acetylated by aspirin to produce 15-epi-lipoxins.  
- **ALOX5AP (FLAP)** – activates ALOX5, linked to coronary artery disease.  
- **CYP450** – involved in generating SPMs (e.g., epoxyeicosatrienoic acids).  
- **ABCA1, ABCB11** – downstream genes regulated by lipoxins, affecting cholesterol transport.

**Receptors**:  
- **FPR2 (ALX)** – binds lipoxins and resolvins; modulates inflammation.  
- **CMKLR1 (ChemR23)** – receptor for RvE1.  
- **GPR32** – receptor for RvD1.  
- **AhR, CysLT1R** – involved in lipoxin signaling and pro-inflammatory pathways.

**SPMs Discussed**:  
- **Lipoxins (LXA4, 15-epi-LXA4)**  
- **Resolvins (RvD1, RvD2, RvE1)**  
- **Protectins (PD1, PDX)**  
- **Maresins (MaR1, MaR2)**  

**Takeaway**:  
- Resolution failure in atherosclerosis is driven by low SPM levels and dysregulated expression of resolution-related genes (ALOX5, ALOX15, FPR2, etc.).  
- SPMs like LXA4 and RvD1 are reduced in unstable plaques.  
- Enhancing resolution via SPM analogues or aspirin-triggered lipoxins offers therapeutic potential.  
- These genes and receptors are **ideal targets** for differential expression analysis in transcriptomic datasets.

---

### [Tanwar et al., 2023] – *Palmitic Acid–Induced lncRNA PARAIL Regulates Inflammation via ELAVL1 in Monocytes and Macrophages*

**Study Type**: RNA-seq analysis + functional studies (knockdown, RIP, RNA-pulldown)

**Focus**:  
- Identifies **PARAIL**, a novel lncRNA upregulated by **palmitic acid (PA)** in monocytes/macrophages.  
- Demonstrates PARAIL’s anti-inflammatory and **pro-resolution** role via interaction with **ELAVL1**, an RNA-binding protein.

**Key Genes/lncRNAs**:  
- **PARAIL (lncRNA)** – inhibits pro-inflammatory genes by retaining ELAVL1 in the nucleus.  
- **ELAVL1 (HuR)** – binds AU-rich elements (AREs) in inflammatory mRNAs (e.g., IL1B, PTGS2); stabilized in the cytosol when PARAIL is low.  
- **RIPK2** – adjacent to PARAIL; upregulated by PA but unaffected by PARAIL knockdown.

**Inflammatory Genes Regulated**:  
- **IL1B, IL6, TNF, PTGS2, THBS1** – all elevated when PARAIL is knocked down.  
- Expression of these genes remained high during late-phase inflammation (48h), showing impaired resolution.

**Mechanism**:  
- PARAIL binds ELAVL1 via ARE motifs → prevents ELAVL1 from stabilizing inflammatory mRNAs in cytoplasm.  
- In chronic inflammation (e.g., diabetes, atherosclerosis), **PARAIL is downregulated**, allowing cytosolic ELAVL1 accumulation and sustained inflammation.

**SPM Relevance**:  
- While no specific SPMs are tested, **PARAIL is functionally pro-resolving**, promoting inflammation resolution through transcript stability control.  
- Complements the lipid-mediated resolution seen in SPM studies (e.g., LXA4, RvD1) by showing **non-lipid resolution regulation via lncRNA–protein interactions**.

**Takeaway**:  
- **PARAIL–ELAVL1 axis** is a new resolution mechanism: transcriptional + post-transcriptional regulation of inflammation.  
- **PARAIL and ELAVL1** are now candidate resolution regulators for expression tracking in cardiometabolic RNA-seq datasets.


### [Hajeyah et al., 2020] – The Biosynthesis of Enzymatically Oxidized Lipids

**Study Type**: Review  
**Focus**: Comprehensive overview of LOX, COX, CYP, and AKR enzymology in biosynthesis of oxylipins, including SPMs.  
**Relevance**: Highlights enzymes involved in SPM biosynthesis (ALOX5, ALOX15, COX-2, CYPs) and contextualizes gene-level regulation relevant to inflammation and resolution in humans.

**Key Points**:
- **ALOX5, ALOX15, ALOX12, PTGS2, ALOX5AP, CYP4F2, AKR1B1**, etc. are central to the production and regulation of SPMs (e.g., LXA4, RvD1).
- Describes structural/functional characteristics of resolution enzymes in humans.
- Discusses regulation of enzymatic activity, dimerization, cellular localization, and reaction specificity (e.g., EPA/DHA preference).
- Links **substrate promiscuity** to challenges in tracking lipid pathways.
- Suggests integration of PUFA- and cholesterol-derived oxidized lipids in disease mechanisms like atherosclerosis.

**Takeaway**: Offers foundational enzymatic context for SPM and oxylipin biosynthesis – a critical reference for interpreting gene expression data and designing RNA-seq resolution pipelines.

**Keywords**: ALOX5, ALOX15, PTGS2, CYP4F2, LOX, COX, CYP450, SPM, LXA4, RvD1, atherosclerosis, inflammation resolution

---

[Serhan et al., 2022] – E-series resolvins, stereochemistry & SPM function in resolution
Study Type: Review + experimental & synthetic confirmation

Focus:

Describes biosynthesis and stereochemistry of RvE1–RvE4, EPA-derived SPMs.
Confirms structures using total organic synthesis, LC-MS/MS, UV spectra, and in vivo validation.
Reviews SPM roles in COVID-19, efferocytosis, and macrophage programming.
Key SPMs:

RvE1 – blocks neutrophil migration, enhances efferocytosis, stable analogs in trials.
RvE2 – inhibits neutrophils, activates ChemR23.
RvE3 – blocks leukocyte migration; reduced in severe COVID-19.
RvE4 – new; promotes M2 macrophage efferocytosis of apoptotic neutrophils/sRBCs.
Key Enzymes/Receptors:

ALOX5, 15-LOX, COX-2 (acetylated), LTA4H, ChemR23, BLT1.
18-HEPE = EPA precursor metabolite for RvE1–E4.
Takeaway:

RvE4 is a novel, stereochemically defined SPM with potent resolution actions.
SPMs are dysregulated in COVID-19; profiling shows ↓ SPMs, ↑ LTB4/PGs.
These resolvins are now clinical trial targets and biomarkers for inflammation resolution.


[Engelen et al., 2022] – Targeting immunity and resolution in atherosclerosis
Study Type: Review + clinical trial synthesis

Focus:

Summarizes immune mechanisms in atherosclerosis and strategies to modulate inflammation.
Reviews SPM-based therapies, IL-1β/IL-6 inhibitors, and efferocytosis enhancement.
Key Mechanisms:

Chronic inflammation driven by defective resolution & efferocytosis.
SPM imbalance: ↓ RvD1/LXA4, ↑ leukotrienes/pro-inflammatory cytokines.
Immune cell roles: monocytes, foam cells, TH1 T cells, iNKT, Tregs, B1 vs B2 cells.
Key Genes/Receptors:

FPR2, CMKLR1, MERTK, LRP1, CD47
Emphasis on ALOX5, PTGS2, ELAVL1, inflammasome (NLRP3, AIM2), IL-1β, IL-6.
Takeaway:

SPMs (e.g. RvD1, RvE1) and efferocytosis pathways are top therapeutic targets.
Trials (CANTOS, COLCOT, LoDoCo2) show anti-inflammatory therapy lowers CV events.
Resolution pharmacology is emerging as a viable clinical approach.

[Viola & Soehnlein, 2015] – Atherosclerosis – A Matter of Unresolved Inflammation
Study Type: Narrative Review

Focus:

Highlights how atherosclerosis is sustained by unresolved inflammation.
Emphasizes the failure of efferocytosis and a decline in SPM production.
Connects immune cell dynamics (particularly macrophages) to resolution impairment.
Key Concepts:

Efferocytosis failure leads to necrotic core expansion in plaques.
SPMs (e.g., resolvins, lipoxins) are reduced in vulnerable atherosclerotic lesions.
Macrophage polarization (M1 vs. M2) is skewed toward inflammation in advanced plaques.
Resolution failure increases risk of thrombosis and acute cardiovascular events.
Mechanisms Discussed:

Oxidized LDL impairs macrophage efferocytosis.
Reduced SPM biosynthesis from omega-3 fatty acids.
Inflammatory cytokine overexpression perpetuates plaque progression.
Takeaway:

Therapies enhancing SPM biosynthesis or efferocytosis could restore resolution in atherosclerosis.
Macrophage function and SPM levels are key resolution biomarkers and therapeutic targets.
[Fernandez et al., 2019] – Single-Cell Transcriptomics Unveils the Regulatory Landscape of Inflammation and Resolution in Atherosclerosis
Study Type: Single-cell RNA-seq

Focus:

Analyzes human atherosclerotic plaques at single-cell resolution.
Identifies transcriptional programs in vascular smooth muscle cells (VSMCs) and macrophages.
Reveals resolution-related gene networks in specific immune cell subsets.
Key Findings:

VSMCs undergo phenotypic switching toward inflammatory states.
Macrophages show distinct pro-inflammatory and pro-resolving subsets.
NR4A1, MERTK, and TREM2 are upregulated in pro-resolving macrophages.
Genes like IL10, TGFB1, and CD163 mark resolution-competent cells.
SPM-Related Insight:

SPM-producing macrophage subsets identified through gene co-expression networks.
These subsets are diminished in unstable plaques.
Takeaway:

Single-cell transcriptomics provides critical insight into the cellular heterogeneity of resolution.
Enables RNA-seq-based targeting of specific macrophage states and resolution genes in human data.
[Mokry et al., 2023] – Transcriptomic-Based Clustering of Human Atherosclerotic Plaques Identifies Subgroups with Different Underlying Biology and Clinical Presentation
Study Type: Transcriptomic re-analysis (bulk RNA-seq)

Focus:

Integrates gene expression data from human carotid plaques.
Classifies plaques into distinct molecular subtypes with different inflammation and resolution patterns.
Key Insights:

Identifies "inflamed" vs. "stable" plaque clusters based on expression of inflammatory cytokines and resolution genes.
ALOX5, PTGS2, and MERTK are differentially expressed across subtypes.
Suggests that plaque resolution potential can be inferred from gene signatures.
Clinical Relevance:

Subtypes correlate with symptom status (e.g., stroke risk) and may guide therapy.
Resolution-associated genes could serve as biomarkers of plaque vulnerability.
Takeaway:

Molecular stratification of plaques allows RNA-seq studies to focus on resolution-deficient cases.
Promotes a personalized transcriptomics approach in cardiovascular disease research.
[Fredman & Tabas, 2017] – Macrophage Trafficking, Inflammatory Resolution, and Genomics in Atherosclerosis
Study Type: Review

Focus:

Highlights how macrophage dynamics affect plaque progression and resolution.
Discusses genomic factors influencing resolution capacity.
Key Concepts:

Macrophage retention and impaired emigration lead to unresolved inflammation.
Genes such as MERTK, LRP1, and ABCA1 control efferocytosis and inflammation shutdown.
Resolution is tied to macrophage egress, lipid handling, and SPM responsiveness.
Genomic Insight:

SNPs in resolution genes may underlie susceptibility to unresolved atherosclerosis.
Regulatory networks include NR4A1, KLF2, and PPARγ.
Takeaway:

Genetic modulation of macrophage behavior is a key lever in promoting resolution.
Offers a genomics-informed direction for analyzing RNA-seq data from plaque tissue.
