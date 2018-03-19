#!/bin/bash
git commit -a
git push
cd _site
git add -A
git commit -a
git push
