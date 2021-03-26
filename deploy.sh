
curl -v -X POST http://20.185.176.246:4243/containers/gradel-sample/kill
curl -v -X DELETE http://20.185.176.246:4243/containers/gradel-sample?force=true
curl -v -X POST http://20.185.176.246:4243/images/prune?dangling=true
sleep 5
curl -v -X POST http://20.185.176.246:4243/images/create?fromImage=calebcall97/gradelsample:latest-master
curl -v -X POST -H "Content-Type: application/json" -d "@docker.json" http://20.185.176.246:4243/containers/create?name=gradel-sample
sleep 5
curl -v -X POST http://20.185.176.246:4243/containers/gradel-sample/start
