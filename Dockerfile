# conda setup
FROM continuumio/miniconda3:4.7.12
RUN conda create -n env python=3.7
ENV PATH /opt/conda/envs/env/bin:$PATH

# creating conda environment
RUN conda config --add channels defaults
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge

RUN conda install prokka==1.14.5 phispy==3.7.8 tbl2asn-forever==25.7.1f

# Entrypoint
CMD /bin/bash
