#!/bin/bash
CUR_DIR=`pwd`
cd $CUR_DIR
npm install
npm run build
cp -f package.json dist
cp -f README.md dist
cd dist
npm publish .
cd $CUR_DIR
