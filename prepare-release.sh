#!/bin/bash
set -e

VERSION=$1

# Met à jour la version dans le pom.xml
mvn versions:set -DnewVersion=$VERSION

# Compile le projet
mvn clean package

# Copie le JAR dans un dossier de release
mkdir -p release
cp target/*.jar release/
