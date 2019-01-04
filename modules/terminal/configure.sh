post()
{
	command local TERMINFO

	TERMINFO="${HOME}/.local/data/terminfo" command tic "${HOME}/.local/application/terminal/terminfo/xterm-256color-custom"

	command unset -v TERMINFO
}
