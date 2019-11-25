# Install R version 3.5
FROM r-base:latest
MAINTAINER Alexey Butyrev <abutyrev@roku.com>

# Make ~/.R 
#RUN mkdir -p /root/.R
#RUN mkdir -p /.R

#COPY Makevars /.R/Makevars
#COPY Makevars /root/.R/Makevars


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

# Install R packages that are required
# TODO: add further package if you need!


# Copy configuration files into the Docker image


CMD ["R"]
