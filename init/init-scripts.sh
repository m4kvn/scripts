#!/bin/sh

if [ ! -n "$1" ]; then
    echo "please input your login profile path."
    exit 1
fi

echo "Your login shell profile path is "
echo "-> $1"
echo "ok) y no) n : "
while read ok; do
    case "$ok" in
        "y" | "Y") break ;;
        "n" | "N") exit 0 ;;
        *) echo "Incorrect value." ;;
    esac
done

if [ ! -s "$1" ]; then
    echo "'$1' is not exists."
    exit 1
fi

dir=$(cd $(dirname $0) && pwd)
cat << EOF >> $1
# Auto setting by github.com/m4kvn/scripts
if [ -s $dir ]; then
    source ${dir}/profile
fi
EOF

echo "Completed init scripts."
