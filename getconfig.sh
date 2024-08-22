#asssumes that the machine is called this. To get another config use `podman machine list`
NAME='podman-machine-default'

config_file=$(podman machine inspect $NAME|jq -r '.[0].ConfigDir.Path')
config_file="${config_file}/$NAME.json"

echo $config_file