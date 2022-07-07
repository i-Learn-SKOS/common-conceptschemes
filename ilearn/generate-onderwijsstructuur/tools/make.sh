#!/bin/bash
# Maak ../schemes/onderwijsstructuur.ttl

set -e

YARRRML_PARSER="yarrrml-parser/bin/parser.js"
RML_MAPPER="rmlmapper-5.0.0-r362-all.jar"

BASENAME=onderwijsstructuur
DIR_IN=../input
DIR_OUT=../../../common/schemes
DIR_TEMP=./temp
FILE_IN="${DIR_IN}/${BASENAME}.yarrrml.yml"
FILE_RML="${DIR_TEMP}/${BASENAME}.rml.ttl"
FILE_GENERATED="${DIR_TEMP}/${BASENAME}.generated.ttl"
FILE_ADDENDUM="${DIR_IN}/${BASENAME}.addendum.ttl"
FILE_OUT="${DIR_OUT}/onderwijsstructuur-final.skos.ttl"
FILE_SKOSIFY_CONFIG="${DIR_IN}/${BASENAME}.skosify.cfg"

if [ ! -d ${DIR_TEMP} ];
then
  echo "Directory ${DIR_TEMP}" not found, creating one!
  mkdir ${DIR_TEMP}
fi

rm -f ${FILE_RML}
rm -f ${FILE_GENERATED}
rm -f ${FILE_OUT}

echo "===== 1. yarrrml-parser ${FILE_IN} --> ${FILE_RML}"
node $YARRRML_PARSER -i ${FILE_IN} -o ${FILE_RML}

echo "===== 2. rmlmapper ${FILE_RML} --> ${FILE_GENERATED}"
java -jar $RML_MAPPER -m ${FILE_RML} -o ${FILE_GENERATED} -s turtle

echo "===== 3. skosify ${FILE_GENERATED}, ${FILE_ADDENDUM} --> ${FILE_OUT}"
skosify -c ${FILE_SKOSIFY_CONFIG} -o ${FILE_OUT} ${FILE_GENERATED} ${FILE_ADDENDUM}
