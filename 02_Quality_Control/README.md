
In this project, I moved from understanding the dataset to working with the actual raw sequencing data. The goal was to download the RNA-Seq reads for a single sample and prepare them for the quality control steps that will follow in the next project.

Instead of downloading the entire dataset (around 60 samples), I chose to work with **Tumor Replicate 1 (SRR15852393)**. Downloading every sample would require a large amount of storage and processing time, so using one representative sample makes it easier to understand the workflow while keeping the project manageable. The compressed SRA file for this sample is approximately **3 GB**.

## What I Did

### Installing the SRA Toolkit

To access sequencing data from the NCBI Sequence Read Archive (SRA), I first installed the **NCBI SRA Toolkit**. After downloading the toolkit, I extracted it using WinRAR and verified that the installation was successful before moving on to the next step.

### Downloading the Raw Sequencing Data

The sequencing run selected for this project was:

- **GEO Sample:** GSM5574685
- **SRA Run:** SRR15852393
- **Sample:** Tumor Replicate 1
- **Organism:** *Homo sapiens*

### Converting SRA to FASTQ

Once the download was complete, I converted the SRA file into FASTQ format using the `fasterq-dump` utility.

Since this experiment used **paired-end sequencing**, the conversion produced two FASTQ files
 `SRR15852393_1.fastq` & `SRR15852393_2.fastq`

These files contain the paired sequencing reads and will be used as the input for the next stages of the RNA-Seq pipeline like ,FastQC, MultiQC, Read trimming using Trimmomatic.

## What I Learned

Through this project, I learned how raw RNA-Seq sequencing data is stored in the NCBI Sequence Read Archive, how to retrieve it using the SRA Toolkit, and how to convert the downloaded SRA archive into FASTQ files. I also gained a better understanding of paired-end sequencing and how these FASTQ files serve as the starting point for every RNA-Seq analysis pipeline.
