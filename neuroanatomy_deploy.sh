#!/bin/bash

# We'll use the standard scijava script for maven deployment
#mvn -Pdeploy-to-imagej deploy --settings settings.xml

echo
echo "====== Generating Fiji installation ======"
sh populate_fiji.sh

echo
echo "====== Uploading to neuroanatomy-unstable update site ======"
cd Fiji.app
chmod a+x ../upload-site-unstable.sh
../upload-site-unstable.sh Neuroanatomy-Unstable Kharrington

echo
echo "====== Uploading to neuroanatomy update site (disabled) ======"
#cd Fiji.app
#chmod a+x ../upload-site-simple.sh
#../upload-site-simple.sh Neuroanatomy-Unstable Kharrington


# Could build a Fiji with neuroanatomy pre-installed
#cd ..
#zip Fiji-Kharrington.zip Fiji.app
#ls
