#!/bin/bash

# cleanup even if Ctrl-C is pressed during execution
trap cleanup_and_exit INT

file="$1"
filename="${file%.*}"

# make sure to handle command-line arguments
shift
args="$*"

function cleanup() {
  rm -f ${filename}.o
  rm -f ${filename}.ali
  rm -f ${filename}.adb.stderr
  rm -f ${filename}.adb.stdout
  rm -f ${filename}.adb~
  rm -f ${filename}.bexch
  rm -f *__${filename}.ads
  rm -f *__${filename}.adb
  rm -f *__${filename}.ali
  rm -f *__${filename}.o
  rm -f ${filename}
}

function cleanup_and_exit() {
  echo "Ctrl-C detected... cleaning up before exit"
  cleanup
}

if [ "$#" -gt 0 ]
then
  gprbuild ${file} && ./${filename} "${args}"
else
  gprbuild ${file} && ./${filename}
fi

# normal exit
cleanup
