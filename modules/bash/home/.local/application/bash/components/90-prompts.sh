prompt_directory()
{
	command local LC_ALL
	command local LC_CTYPE

	LC_ALL=
	LC_CTYPE="C"

	command local character
	command local current
	command local path
	command local total

	current="0"
	path=""
	total="${#PWD}"

	while command test "${current}" -lt "${total}"
	do
		character="${PWD:current:1}"

		if [[ "${character}" =~ [/._~A-Za-z0-9-] ]]
		then
			path+="${character}"
		else
			command local hexadecimal

			hexadecimal=""

			command printf -v hexadecimal "%02X" "'${character}"
			path+="%${hexadecimal: -2:2}"

			command unset -v hexadecimal
		fi

		current="$((current+1))"
	done

	command printf "\e]7;%s\a" "file://${HOSTNAME}${path}"

	command unset -v character
	command unset -v current
	command unset -v path
	command unset -v total
	command return 0
}

prompt()
{
	command local foreground

	if command test "${TERMINAL_BACKGROUND}" = "dark"
	then
		foreground="$(foreground black true)"
	else
		foreground="$(foreground white)"
	fi

	PS1=""
	PS1+="\[${foreground}\]"
	PS1+="→"
	PS1+="\[$(foreground reset)\]"
	PS1+=" "

	PS2=""
	PS2+="\[$(foreground yellow)\]"
	PS2+="→"
	PS2+="\[$(foreground reset)\]"
	PS2+=" "

	PS3=""
	PS3+="\[$(foreground yellow)\]"
	PS3+="?"
	PS3+="\[$(foreground reset)\]"
	PS3+=" "

	PS4=""
	PS4+="\[${foreground}\]"
	PS4+="•"
	PS4+="\[$(foreground reset)\]"
	PS4+=" "

	command unset -v foreground
	command return 0
}

PROMPT_COMMAND="prompt"
