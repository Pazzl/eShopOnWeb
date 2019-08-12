#!/bin/bash

sudo apt update && sudo apt install dotnet-sdk-2.2 -y
dotnet publish -c Release -o ./app src/Web
cd src/Web/app
gcloud app deploy --version $1
