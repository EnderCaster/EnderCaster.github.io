#!/bin/bash
git commit -a
git push
jekyll build
cd _site
git add -A
git commit -a
git push
