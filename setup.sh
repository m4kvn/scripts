#!/bin/sh

dir="$HOME/.scripts"

if [ -d "$dir" ]; then
    cd $dir && git fetch && git pull origin master
else
    git clone https://github.com/m4kvn/scripts.git $dir
fi

cd $dir/bin && \
ls -Ad $dir/folders | \
xargs -I{} find {} -type f | \
xargs -I{} ln -s {} 2>/dev/null

exit 0
