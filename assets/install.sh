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


gcc "$HOME/.oresoftware/cpp/realpath.c" -o "$HOME/.oresoftware/bin/realpath"

echo "";
echo -e "${ql_green} => quicklock download succeeded.${ql_no_color}";
echo -e "${ql_cyan} => To complete installation of 'quicklock' add the following line to your .bash_profile file:${ql_no_color}";
echo "  echo \"loading quicklock\" && . \"\$HOME/.quicklock/ql.sh\"";  # `.` is like `source` but more cross-platform
echo "";


# that's it lulz


