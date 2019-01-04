CDPATH=".:${CDPATH}"

command export CDPATH

if command test -x "/usr/libexec/path_helper"
then
	command eval "$(/usr/libexec/path_helper -s)"
fi

command export PATH
