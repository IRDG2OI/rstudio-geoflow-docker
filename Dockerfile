FROM rocker/geospatial:4.2.2-ubuntugis

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install libsecret-1-0 grass

RUN install2.r --error --skipmissing --skipinstalled -n 40 \
    rgrass \
    gsheets \
    geometa \
    geonapi \
    geosapi \
    zen4R \
    atom4R \
    ows4R 

## install geoflow to manage metatda and sdi upload
RUN R -e "remotes::install_github('r-geoflow/geoflow')"

# Clean up
RUN rm -rf /var/lib/apt/lists/*
RUN rm -r /tmp/downloaded_packages
