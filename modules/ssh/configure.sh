pre()
{
	command mkdir -p "${HOME}/.local/data/ssh"

	if command test -f "${HOME}/.local/data/ssh/id_rsa"
	then
		command rm "${HOME}/.local/data/ssh/id_rsa"
	fi

	command local email
	command local passphrase

	command read -p "Email: " email
	command read -s -p "Passphrase: " passphrase
	command ssh-keygen -q -t rsa -b 4096 -f "${HOME}/.local/data/ssh/id_rsa" -C "${email}" -N "${passphrase}"

	command unset -v email
	command unset -v passphrase
}
