#!/usr/bin/env sh

export LD_LIBRARY_PATH="./gtuber/installation/usr/local/lib64:$LD_LIBRARY_PATH"
export GI_TYPELIB_PATH="./gtuber/installation/usr/local/lib64/girepository-1.0"

if [ "$*" -eq 0 ]; then
  INPUT=$(zenity --entry --text="URI to run Gtuber against" --entry-text="")
else
  INPUT="${*[0]}"
fi

python3 ./main.py "$INPUT"