# Use Rocker RStudio 4.4.2 as the base image
FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('renv', repos =c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "install.packages('remotes', repos =c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('dplyr', version = '1.0.10', repos = 'https://cloud.r-project.org')"

## updated the password, now try again
## Make a change to Dockerfile to check image would be automatically built and pushed to DockerHub
## last fix hope this works