post()
{
	if command hash "nvim" > "/dev/null" 2>&1
	then
		command git config --global core.pager "nvim -R"
		command git config --global color.pager no
	fi

	command local name

	command read -p "Name: " name
	command git config --global user.name "${name}"

	command unset -v name
}
