#!/usr/bin/env bash

set -ex

# Download Dependencies
pip3 install -r ./requirements.txt

# Download CIFAR-10 Dataset
url="https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz"
destination_folder="./data"
mkdir -p "$destination_folder"
filename=$(basename "$url")
wget -O "$destination_folder/$filename" "$url"
echo "Data successfully downloaded at $destination_folder"