# scripts

## Installation

**requrie Git**

```
curl -sL https://github.com/m4kvn/scripts/raw/master/setup.sh | sh
```

Add path setting script to your shell profile.

```
if [ -s $HOME/.scripts ]; then
    export PATH=$HOME/.scripts/bin:$PATH
fi
```
