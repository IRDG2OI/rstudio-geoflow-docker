FROM rocker/geospatial:4.2.2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install libsecret-1-0 python pip git nano
RUN pip install --index-url https://${fiftyonekey}@pypi.fiftyone.ai fiftyone

RUN install2.r --error --skipmissing --skipinstalled -n 40 \
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
