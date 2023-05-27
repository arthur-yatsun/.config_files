#!/usr/bin/env bash


function publish() {
  twine upload --verbose \
  --repository-url "http://cheeseshop/mypackage" \
  -u "anonymous" -p "anonymous" dist/*
}


while true; do
    read -rep "
Publishing next files:
$(ls dist/).

Enter [Y/y] to continue: " yn

    case $yn in
        [Yy]* ) publish; break;;
        [Nn]* ) echo "Aborting" && break;;
        * ) echo "Aborting" && break;;
    esac
done
