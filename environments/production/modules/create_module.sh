#!/bin/bash

if [[ $# != 1 ]]
then
  echo Usage: `basename $0` module-name
  exit 1
fi

MODULE=$1

mkdir -pv $MODULE/manifests/classes

echo "class $MODULE {"                              > $MODULE/manifests/init.pp
echo "	include '$MODULE::classes::install'"       >> $MODULE/manifests/init.pp
echo "	include '$MODULE::classes::configuration'" >> $MODULE/manifests/init.pp
echo "}"                                           >> $MODULE/manifests/init.pp

echo -e "class $MODULE::classes::install {\n}" > $MODULE/manifests/classes/install.pp
echo -e "class $MODULE::classes::configuration {\n}" > $MODULE/manifests/classes/configuration.pp

