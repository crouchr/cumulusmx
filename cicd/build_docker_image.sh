#!/bin/bash
cd ..
docker build --no-cache -t cicd:cumulusmx .
docker tag cicd:cumulusmx registry:5000/cumulusmx:$VERSION
docker push registry:5000/cumulusmx:$VERSION
docker rmi cicd:cumulusmx
