#!/bin/bash

set -e -x

dirs="strepsitools strepsimur strepsirank strepsent strepsipand"
for dir in $dirs; do
	cd $dir
	git checkout master
	git pull
	sed -i -e "s/<strepsi.version>.*<\/strepsi.version>/<strepsi.version>$1<\/strepsi.version>/g" pom.xml
	mvn -U clean compile install -DskipTests
 	git commit -a -m "moved to version $1"
	git push origin
	git checkout release
	cd ..
done

git checkout master
git pull
sed -i -e "s/<strepsi.version>.*<\/strepsi.version>/<strepsi.version>$1<\/strepsi.version>/g" pom.xml
mvn -U clean compile install
git commit -a -m "moved to version $1"
git push origin
git checkout release


