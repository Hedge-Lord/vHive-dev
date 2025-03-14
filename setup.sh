git clone --depth=1 https://github.com/Hedge-Lord/vHive-dev.git
mkdir -p /tmp/vhive-logs/
cd vHive-dev
./scripts/install_go.sh; source /etc/profile
pushd scripts && go build -o setup_tool && popd && mv scripts/setup_tool .
./setup_tool setup_node firecracker