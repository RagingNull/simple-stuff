FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi

# use USER as ROOT
USER root

COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/

# Create dir /my-special-folder
RUN mkdir -p /my-special-folder

# copy Dockerfile to new directory
COPY Dockerfile /my-special-folder