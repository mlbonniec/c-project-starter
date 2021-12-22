#!/bin/bash

already_setup=false

# If no args is passed, exit with an error
if [ -z "$1" ]; then
    echo "You must specify a project name."
    exit 1
elif $already_setup; then
    echo "You already have setup this project."
    exit 1
fi

# Check if used commands exists
cmds=(find rename sed rm)
for cmd in "${cmds[@]}"
do
    if ! [ -x "$(command -v $cmd)" ]; then
        echo "Error: $cmd is not installed."
        echo "You need to install it to setup this starter."
        exit 1
    fi
done

# Ask for Github repository name to setup remote
read -p "Please specify the Github repository name: " repository
if [ -z "$repository" ]; then
    echo "You must specify the Github repository name."
    exit 1
else
    read -p "Validate repository name: $repository (yes/no): " validation
    # TODO: setup git remote url
    if [ "$validation" == "no" ] || [ "$validation" == "n" ]; then
        echo "Setup aborted."
        exit 1
    fi
fi

# Replace file names and content with project name
find . -name "*\${PROJECT_NAME}*" -exec rename "\${PROJECT_NAME}" "${1,,}" {} ";" \
&& echo "Successful renaming files." || echo "Error in renaming files"
find . -type f -exec sed -i "s/\${PROJECT_NAME}/${1,,}/g" {} +
find . -type f -exec sed -i "s/\${PROJECT_NAME_UPPERCASE}/${1^^}/g" {} +
sed -i 's/already_setup=false/already_setup=true/g' setup.sh

read -p "Would you delete this setup file? (yes/no): " deletion
if [ "$deletion" == "yes" ] || [ "$deletion" == "y" ]; then
    echo "File deleted."
    rm setup.sh
fi
