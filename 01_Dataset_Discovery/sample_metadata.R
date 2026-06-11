setwd("C:/Users/ANUSHKA REDDY/RNASeq-learning-series/01_Dataset_Discovery")
lines <- readLines("GSE183947_series_matrix.txt")
length(lines)

grep("!Sample_geo_accession", lines, value = TRUE)

grep("!Sample_title", lines, value = TRUE)

grep("!Sample_characteristics_ch1", lines, value = TRUE)

geo_line <- grep("^!Sample_geo_accession", lines, value = TRUE)

title_line <- grep("^!Sample_title", lines, value = TRUE)

tissue_line <- grep("tissue:", lines, value = TRUE)

metastasis_line <- grep("metastasis:", lines, value = TRUE)

donor_line <- grep("donor:", lines, value = TRUE)
geo_line
title_line

geo <- strsplit(geo_line, "\t")[[1]][-1]

title <- strsplit(title_line, "\t")[[1]][-1]

tissue <- strsplit(tissue_line, "\t")[[1]][-1]

metastasis <- strsplit(metastasis_line, "\t")[[1]][-1]

donor <- strsplit(donor_line, "\t")[[1]][-1]

geo <- gsub('"', '', geo)

title <- gsub('"', '', title)

tissue <- gsub('tissue: ', '', gsub('"', '', tissue))

metastasis <- gsub('metastasis: ', '', gsub('"', '', metastasis))

donor <- gsub('donor: ', '', gsub('"', '', donor))

metadata <- data.frame(
  GSM_ID = geo,
  Sample_Name = title,
  Tissue = tissue,
  Metastasis = metastasis,
  Donor = donor,
  stringsAsFactors = FALSE
)
head(metadata)

dim(metadata)
write.csv(
  metadata,
  "sample_metadata.csv",
  row.names = FALSE
)
file.exists("sample_metadata.csv")
dim(metadata)
head(metadata)
str(metadata)

write.csv(metadata, "sample_metadata.csv", row.names = FALSE)
list.files()
