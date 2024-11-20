#!/bin/bash

new_version=$1

build_number=$(grep 'version:' pubspec.yaml | cut -d'+' -f2 | xargs)
if [[ -z "$build_number" ]]; then
    new_build_number=1
else
    new_build_number=$((build_number + 1))
fi
new_version_build="$new_version+$new_build_number"

sed -i "s/version: .*/version: $new_version_build/" pubspec.yaml 