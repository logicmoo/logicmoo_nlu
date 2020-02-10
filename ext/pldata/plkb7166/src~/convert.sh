
#find . -type f -name *.pl -exec sed -i.bak "s/a7166_//g" {} \;
#find . -type f -name "*.pl" -exec sed -i.bak -e  's/^/ /;:a' -e 's/\([^[:alnum:]]\)\([[:digit:]]\{1,\}\)(/\1a\2(/g;ta' -e 's/^ //' {} \;

