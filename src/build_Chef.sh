#!/bin/bash
mv ${WORKSPACE}/Chef "xFusion Chef Plugin"
cd "xFusion Chef Plugin"
rm -rf .git
cd ..
zip -r "xFusion Chef Plugin v1.2.0".zip "xFusion Chef Plugin"