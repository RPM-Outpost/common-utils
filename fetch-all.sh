#!/bin/bash
# Author: TheElectronWill
# Runs git fetch in all the directories inside the script directory

cd "$(dirname "$0")"
cd ..
for dir in */; do
	echo -e "\033[1mFetching $dir\033[0m"
	cd $dir
	git fetch --all
	cd ..
done
echo '----------'
echo -e "\033[1;32mFetch completed.\033[0m"
