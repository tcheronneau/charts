#!/bin/bash


helm package $1 --version $2
mv *.tgz docs/
helm repo index docs --url https://tcheronneau.github.io/charts/
git commit -am "Adding $1 to helm repo"
git push 
 
