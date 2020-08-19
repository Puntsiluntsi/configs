# Add directory to PATH if it exists and isn't already in PATH
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}
# TODO: add option -p to prepend rather than append

pathadd ~/bin
