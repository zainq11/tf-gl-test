#!/bin/bash

source_dir=$1
target_dir=$2
files_to_sync=(".gitlab-ci.yml" "Base.gitlab-ci.yml")

for file in "${files_to_sync[@]}"
do
  rsync -a "${source_dir}/${file}" "${target_dir}/${file}"
done