if command test -z "${LANG}"
then
	if command test -r "${XDG_CONFIG_HOME}/locale/locale.conf"
	then
		command source "${XDG_CONFIG_HOME}/locale/locale.conf"
	elif command test -r "/etc/locale.conf"
	then
		command source "/etc/locale.conf"
	fi
fi

LANG="${LANG}"

command export LANG
command export LANGUAGE
command export LC_ADDRESS
command export LC_COLLATE
command export LC_CTYPE
command export LC_IDENTIFICATION
command export LC_MEASUREMENT
command export LC_MESSAGES
command export LC_MONETARY
command export LC_NAME
command export LC_NUMERIC
command export LC_PAPER
command export LC_TELEPHONE
command export LC_TIME
