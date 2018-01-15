# docker rpi-gogs-0.11.34, This project makes it possible to run gogs-0.11.34 on Docker on a Raspberry Pi

## Build
```
$git clone https://github.com/AZsoftAlanZheng/rpi-gogs-0.11.34.git
$cd rpi-gogs-0.11.34
$chmod +x ./build.sh
$./build.sh
```

## Run
```
docker run -d --name my-gogs-0.11.34 --publish 8022:22 --publish 3000:3000 --volume $(pwd)/gogs-data-0.11.34/:/data azsoftalanzheng/rpi-gogs-0.11.34
```

## Web
> Goto install page: http://hostname:3000/install

## Note
1. First user to register gets administrator priviledges.
1. config file if available at $(pwd)/gogs-data-0.11.34/gogs/conf/app.ini
