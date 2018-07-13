#!/usr/bin/env bash

set -e;

ql_gray='\033[1;30m'
ql_magenta='\033[1;35m'
ql_cyan='\033[1;36m'
ql_orange='\033[1;33m'
ql_green='\033[1;32m'
ql_no_color='\033[0m'


mkdir -p "$HOME/.oresoftware/cpp"
mkdir -p "$HOME/.oresoftware/bin"

curl -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/oresoftware/realpath/master/assets/realpath.c?$(date +%s)" \
--output "$HOME/.oresoftware/cpp/realpath.c"

if ! which gcc; then
   echo "You need to have gcc on your system to compile c files.";
   exit 1;
fi


gcc "$HOME/.oresoftware/cpp/realpath.c" -o "$HOME/.oresoftware/bin/realpath" || {
   echo "Could not compile realpath.c on your system with gcc";
   exit 1;
}

chmod u+x "$HOME/.oresoftware/bin/realpath"

echo "";
echo -e "${ql_green} => realpath download/installation succeeded.${ql_no_color}";
echo "";


# that's it lulz


