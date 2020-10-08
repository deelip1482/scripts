#!/bin/bash
#parent_ids=($(git cat-file -p $1 | grep parent))
parent_ids=($(git cat-file -p $1 | grep parent))
for each in "${parent_ids[@]}"
do
  echo  "parent_ids: $each"
done

echo ${parent_ids[1]}
echo ${parent_ids[3]}

range=`git rev-list ${parent_ids[3]} ^${parent_ids[1]} --count`
echo $range
git format-patch -$range ${parent_ids[3]} ${parent_ids[1]} --stdout > foo.patch
