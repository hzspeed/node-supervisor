#!/bin/sh
startService() {
        echo "starting  service 3  [$1],  HTTP port: [$2]"
        cd /Users/hujiabao/workspace_docker/icp/easynode-ipc/bin
		babel-node --harmony main.js --debug-output=true --http.server.port=$2 --src-dirs=src --main-class=netease.icp.backend.Main --config-files=config/service.conf  --easynode.app.id=$1
}

echo 'starting icp servers...'

#################icp backend Servers START##############
sleep 1
startService 'icp' $PORT
#################icp backend Servers END#########################
echo 'icp backend servers started!'
