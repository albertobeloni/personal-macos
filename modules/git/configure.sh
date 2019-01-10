post()
{
	if command hash "nvim" > "/dev/null" 2>&1
	then
		command git config --file "${HOME}/.local/application/git/config" core.pager "nvim -R"
		command git config --file "${HOME}/.local/application/git/config" color.pager no
	fi

	command local name

	command read -p "Name: " name
	command git config --file "${HOME}/.local/application/git/config" user.name "${name}"

	command unset -v name
}
