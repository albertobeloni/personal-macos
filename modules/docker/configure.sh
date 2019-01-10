post()
{
	command local driver
	command local machine

	driver="xhyve --xhyve-experimental-nfs-share --xhyve-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v18.06.1-ce/boot2docker.iso"
	machine="default"

	MACHINE_STORAGE_PATH="${HOME}/.local/data/docker/machine"

	command export MACHINE_STORAGE_PATH
	command docker-machine rm --force -y "${machine}" > "/dev/null" 2>&1
	command docker-machine create "${machine}" --driver ${driver}
}
