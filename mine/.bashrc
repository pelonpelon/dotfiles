. ~/.bash_prompt

## Common shell commands
. ~/shrc

function md {
    if [ ! -n "$1" ]; then
        echo "Enter a directory name"
    elif [ -d $1 ]; then
        echo "\`$1' already exists"
    else
        mkdir -p "$1" && cd $_
    fi
}

