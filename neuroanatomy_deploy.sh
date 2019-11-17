#!/bin/bash

# We'll use the standard scijava script for maven deployment
#mvn -Pdeploy-to-imagej deploy --settings settings.xml

echo
echo "====== Generating Fiji installation ======"
sh populate_fiji.sh

echo
echo "====== Uploading to neuroanatomy-unstable update site ======"
cd Fiji.app
#curl -O https://raw.githubusercontent.com/fiji/fiji/7f13f66968a9d4622e519c8aae04786db6601314/bin/upload-site-simple.sh
chmod a+x ../upload-site-simple.sh
../upload-site-simple.sh Neuroanatomy-Unstable Kharrington


# Could build a Fiji with neuroanatomy pre-installed
#cd ..
#zip Fiji-Kharrington.zip Fiji.app
#ls
