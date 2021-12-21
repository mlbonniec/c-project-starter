#!/bin/bash

# If no args is passed, exit with an error
if [ -z "$1" ]; then
    echo "You must specify a project name."
    exit 1
fi

cmds=(find rename sed)
for cmd in "${cmds[@]}"
do
    if ! [ -x "$(command -v $cmd)" ]; then
        echo "Error: $cmd is not installed."
        echo "You need to install it to setup this starter."
        exit 1
    fi
done

find . -name "*\${PROJECT_NAME}*" -exec rename "\${PROJECT_NAME}" "${1,,}" {} ";"
find . -type f -exec sed -i "s/\${PROJECT_NAME}/${1,,}/g" {} +
find . -type f -exec sed -i "s/\${PROJECT_NAME_UPPERCASE}/${1^^}/g" {} +
exit 0
