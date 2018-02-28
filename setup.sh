#!/bin/bash

dir=$(cd $(dirname $0) && pwd)
cat << EOF > profile
export PATH=${dir}/android:\$PATH
EOF

cat << EOF >> ~/.bash_profile
# Auto setting by github.com/m4kvn/scripts
if [ -s $dir ]; then
    source ${dir}/profile
fi
EOF
