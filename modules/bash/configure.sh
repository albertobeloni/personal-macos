pre()
{
	command echo "/usr/local/bin/bash" | command sudo tee -a "/etc/shells"
	command chsh -s "/usr/local/bin/bash"

	if command test ! -r "/etc/bashrc.old" && command test -r "/etc/bashrc"
	then
		command sudo cp "/etc/bashrc" "/etc/bashrc.old"
	fi
}
