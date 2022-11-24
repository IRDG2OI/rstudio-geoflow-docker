# Rstudio Server geoflow customized for G2OI project

This image is based on official [rocker/geospatial](https://hub.docker.com/r/rocker/geospatial) image itself based on  [rocker/verse](https://hub.docker.com/r/rocker/verse/) image.
It adds a few feature, such as:
* [geoflow](https://github.com/r-geoflow/geoflow): a simplified metadata publishing tool using a simple configuration file and data spreadsheet. geoflow also allows the publication of data and matadata in spatial data infrastructures (SDI). It uses other libraries like 
* [geometa](https://cran.r-project.org/web/packages/geometa/index.html): Tools for Reading and Writing ISO/OGC Geographic Metadata
* [geonapi](https://cran.r-project.org/web/packages/geonapi/index.html): 'GeoNetwork' API R Interface
* [geosapi](https://cran.r-project.org/web/packages/geosapi/index.html): 'GeoServer' REST API R Interface
* [ows4R](https://cran.r-project.org/web/packages/ows4R/index.html):  Interface to OGC Web-Services (OWS) like owslib in Python
* [atom4R](https://cran.r-project.org/web/packages/atom4R/index.html): Tools to Handle and Publish Metadata as 'Atom' XML Format
* [zen4R](https://cran.r-project.org/web/packages/zen4R/index.html): Interface to 'Zenodo' REST API to publish [DOI (Digital Object identfifier)](https://en.wikipedia.org/wiki/Digital_object_identifier)

Additionnally  
* [grass](https://grass.osgeo.org/): powerful raster, vector, and geospatial processing engines


## Build image

`docker build .  -t g2oi/rstudio-geoflow:4.2.2`

## Run RStudio container

Simply run:

`docker run --rm -it -p8787:8787 -v $PWD/rstudio:/home --name rstudio g2oi/rstudio-geoflow-docker`

or use docker compose with:

`docker-compose up -d`

Launch your web browser and go to `http://<ipadress>:8787`


## Adding new users :

Documentation to be done
