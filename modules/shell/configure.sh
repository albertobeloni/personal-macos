pre()
{
	if command test ! -r "/etc/profile.old" && command test -r "/etc/profile"
	then
		command sudo cp "/etc/profile" "/etc/profile.old"
	fi
}
