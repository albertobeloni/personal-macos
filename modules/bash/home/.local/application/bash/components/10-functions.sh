foreground()
{
	command local prefix
	command local color

	prefix="${2}"
	color="${1}"

	if command test "${prefix}" = "true"
	then
		prefix="9"
	else
		prefix="3"
	fi

	case "${color}" in
		"reset")
			color="0"
			;;
		"black")
			color="${prefix}0"
			;;
		"red")
			color="${prefix}1"
			;;
		"green")
			color="${prefix}2"
			;;
		"yellow")
			color="${prefix}3"
			;;
		"blue")
			color="${prefix}4"
			;;
		"magenta")
			color="${prefix}5"
			;;
		"cyan")
			color="${prefix}6"
			;;
		"white")
			color="${prefix}7"
			;;
	esac

	command printf "\e[%sm" "${color}"

	command unset -v prefix
	command unset -v color
	command return 0
}

format()
{
	command local format

	format="${1}"

	case "${format}" in
		"reset")
			format="0"
			;;
		"bold")
			format="1"
			;;
		"dim")
			format="2"
			;;
		"italic")
			format="3"
			;;
		"underline")
			format="4"
			;;
		"blink")
			format="5"
			;;
		"reverse")
			format="7"
			;;
		"hidden")
			format="8"
			;;
	esac

	command printf "\e[%sm" "${format}"

	command unset -v format
	command return 0
}
