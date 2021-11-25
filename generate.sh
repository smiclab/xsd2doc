#!/bin/bash

INPUT_DIR=xsd
OUTPUT_DIR=docs
XSLT_FILE=xs3p/xs3p.xsl

cp $XSLT_FILE $INPUT_DIR/.

cd $INPUT_DIR
for f in *.xsd
do
  echo "Generating documentation for: $f"
  xsltproc --param linksFile "'links.xml'" --param searchImportedSchemas "'true'" --nonet --output ../$OUTPUT_DIR/$f.html xs3p.xsl $f
done

rm xs3p.xsl
