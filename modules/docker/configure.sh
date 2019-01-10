post()
{
	command local driver
	command local machine

	driver="xhyve --xhyve-experimental-nfs-share"
	machine="default"

	MACHINE_STORAGE_PATH="${HOME}/.local/data/docker/machine"

	command export MACHINE_STORAGE_PATH
	command docker-machine rm --force -y "${machine}" > "/dev/null" 2>&1
	command docker-machine create "${machine}" --driver ${driver}
}
