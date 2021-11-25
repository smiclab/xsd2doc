#!/bin/bash

INPUT_DIR=xsd
OUTPUT_DIR=docs
XSLT_FILE=xs3p.xsl

for f in $INPUT_DIR/*.xsd
do
  FILENAME=`basename $f`
  echo "Generating documentation for: $FILENAME"
  xsltproc --nonet --output $OUTPUT_DIR/$FILENAME.html $XSLT_FILE $f
done
