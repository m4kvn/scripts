#!/bin/sh

dir="$HOME/.scripts"

git clone https://github.com/m4kvn/scripts.git $dir

cd $dir/bin && \
ls -Ad $dir/folders | \
xargs -I{} find {} -type f | \
xargs -I{} ln -s {} 2>/dev/null
