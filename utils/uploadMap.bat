@ECHO OFF
set "MAP_NAME=YOUR_MAP"
set "SERVER_IP=X.X.X.X"
scp -i "valheim.pem" ./upload/%MAP_NAME%.fwl ubuntu@%SERVER_IP%:/home/ubuntu/valheim/saves/worlds/%MAP_NAME%.fwl
scp -i "valheim.pem" ./upload/%MAP_NAME%.db ubuntu@%SERVER_IP%:/home/ubuntu/valheim/saves/worlds/%MAP_NAME%.db
ECHO done :)