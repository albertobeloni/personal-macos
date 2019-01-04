git_branch()
{
	if command hash "git" > "/dev/null"
	then
		command local branch

		branch=""

		if command git rev-parse --is-inside-work-tree > "/dev/null" 2>&1
		then
			branch="$(command git symbolic-ref --quiet --short HEAD || command git rev-parse --short HEAD)"
		fi

		if command test -n "${branch}"
		then
			command printf "%s" "${branch}"
		fi


		command unset -v branch
	fi

	command return 0
}

git_prompt()
{
	command local branch

	branch="$(git_branch)"

	command printf "\e]0;%s\a" "${branch}"

	command unset -v branch
	command return 0
}

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND;}git_prompt"
