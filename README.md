### prerequisite
docker docker-compose
### install


```
git clone https://github.com/ang-st/omni-api-docker
cd omni-api-docker
git submodule init
git submodule update
docker-compose build
./initdb.sh
docker-compose up
```

