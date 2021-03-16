#!/bin/sh

# Configurable Input Paths
export VIAME_INSTALL=/opt/noaa/viame
export DOWNLOAD_LOCATION=/tmp/VIAME-Addons

# Ensure Download Location is Created
mkdir -p ${DOWNLOAD_LOCATION}

# Download All Optional Packages

# Habcam -
wget -O ${DOWNLOAD_LOCATION}/download1.zip https://data.kitware.com/api/v1/item/6011e3452fa25629b91ade60/download
unzip -o ${DOWNLOAD_LOCATION}/download1.zip -d ${VIAME_INSTALL}

# SEFSC -
wget -O ${DOWNLOAD_LOCATION}/download2.zip https://viame.kitware.com/api/v1/item/604859fc5b1737bb9085f5e2/download
unzip -o ${DOWNLOAD_LOCATION}/download2.zip -d ${VIAME_INSTALL}

# PengHead -
wget -O ${DOWNLOAD_LOCATION}/download3.zip https://data.kitware.com/api/v1/item/6011ebf72fa25629b91aef03/download
unzip -o ${DOWNLOAD_LOCATION}/download3.zip -d ${VIAME_INSTALL}

# Motion -
wget -O ${DOWNLOAD_LOCATION}/download4.zip https://data.kitware.com/api/v1/item/601b00d02fa25629b9391ad6/download
unzip -o ${DOWNLOAD_LOCATION}/download4.zip -d ${VIAME_INSTALL}

# EM Tuna -
wget -O ${DOWNLOAD_LOCATION}/download5.zip https://data.kitware.com/api/v1/item/601afdde2fa25629b9390c41/download
unzip -o ${DOWNLOAD_LOCATION}/download5.zip -d ${VIAME_INSTALL}


# Ensure Download Location is Removed
rm -rf ${DOWNLOAD_LOCATION}
