FROM rocker/rstudio:4.4.2

COPY . /home/rstudio/project

RUN Rscript -e 'install.packages("renv")' && \
    Rscript -r 'renv::restore()'