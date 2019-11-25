# Install R version 3.5
FROM r-base:latest
MAINTAINER Alexey Butyrev <abutyrev@roku.com>

# Install Ubuntu packages
RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev \
    libssl-dev \
    r-cran-rstan

# Run this to install prophet package
COPY ./installer.R ./
RUN Rscript installer.R

CMD ["R"]
