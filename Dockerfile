FROM rocker/rstudio

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends zlib1g-dev libbz2-dev python-dev liblzma-dev libjpeg-dev libpng-dev

RUN R -e 'if (!requireNamespace("BiocManager", quietly = TRUE))install.packages("BiocManager")'
RUN R -e 'BiocManager::install(version = "3.10", , update=TRUE, ask=FALSE)'
RUN R -e 'BiocManager::install("dada2", version="3.10", update=TRUE, ask=FALSE)'
RUN R -e 'BiocManager::install("phyloseq", update=TRUE, ask=FALSE)'