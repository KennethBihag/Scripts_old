#! /bin/bash/

expectedArgs="<source directory>:<target directory>"
expectedCount=2
actualArgs="$@"
actualCount=$#
export expectedArgs actualArgs expectedCount actualCount
./args_check.sh
if (($? > 0))
then exit 1
fi

source="$1"
parent="$source/.."
target="$2"
folder=${source////}
folder=${folder: -3}
echo Folder name : $folder

while IFS= read file
do
    mv -t "$parent/$target" "$file"
done < <(ls $parent/* -d | grep -ve "$folder$")
