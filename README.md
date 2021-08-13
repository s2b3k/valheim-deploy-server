# 1) Install server:
```sh install-dependencies.sh```

# 2) Upload map:
```
scp -i "valheim.pem" ubuntu@<server_ip>:/home/ubuntu/valheim/saves/worlds/<map_name>.fwl <map_name>.fwl

scp -i "valheim.pem" ubuntu@<server_ip>:/home/ubuntu/valheim/saves/worlds/<map_name>.db <map_name>.db
```

*or optionally use shell script from utils directory - uploadMap.bat*

# 3) Customize docker-compose.yml
```
- NAME="SERVERNAME"
- PASSWORD="ATLEAST5CHARACTERS"
```

# 4) Start server:
```sudo docker-compose up```

# Utils:
*getMaps.bat / uploadMap.bat* windows shell scripts have to be edited:
```
set "MAP_NAME=YOUR_MAP"
set "SERVER_IP=X.X.X.X"
```