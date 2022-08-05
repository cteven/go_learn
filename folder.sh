#!/usr/bin/sh

# so i dont have to create a folder for each shell file manually
# and move them manually

for file in $(ls | grep .sh); do 
  if [ $file = "folder.sh" ]; then
    continue
  fi
  dir=${file%.*}
  if [ ! -d $dir ]; then
    echo "creating $dir directory"
    mkdir $dir
  fi
  mv $file $dir/
done

