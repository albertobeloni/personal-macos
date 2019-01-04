pre()
{
	if command test ! -r "/etc/bashrc.old" && command test -r "/etc/bashrc"
	then
		command sudo cp "/etc/bashrc" "/etc/bashrc.old"
	fi
}
