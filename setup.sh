#!/bin/bash

dir=$(cd $(dirname $0) && pwd)
cat << EOF >> ~/.bash_profile

export PATH=${dir}/android:\$PATH
EOF
