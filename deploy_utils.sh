#!/bin/bash
# Author: TheElectronWill
# Script that deploys the other scripts to all the repositories of https://github.com/RPM-Outpost

set -e # Stops the script on error

copy_scripts_to() {
	echo $1
	cp scripts/* "$1/"
}

cd "$(dirname "$0")"
ls scripts
if [ $# -eq 0 ]; then
	for dir in ../*/; do
		if [[ $dir != "../common-utils/" ]]; then
			copy_scripts_to "$dir"
		fi
	done
else
	for dir_name in $@; do
		copy_scripts_to "../$dir_name"
	done
fi
