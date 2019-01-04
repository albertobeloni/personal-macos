DOCKER_CONFIG="${XDG_DATA_HOME}/docker"
MACHINE_STORAGE_PATH="${XDG_DATA_HOME}/docker/machine"

command export DOCKER_CONFIG
command export MACHINE_STORAGE_PATH

if command docker-machine env default > "/dev/null" 2>&1
then
	command eval "$(command docker-machine env default)"
fi
