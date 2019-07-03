#!/bin/bash
echo "\nBuild and push preprocess component"
sh ./components/preprocess/build_image.sh

echo "\nBuild and push train component"
sh ./components/train/build_image.sh

echo "\nBuild and push deploy component"
sh ./components/deploy/build_image.sh