# get-iplayer-docker
Docker image for the get_iplayer script as distributed @ https://github.com/get-iplayer/get_iplayer.git

## Build

```
docker build -t getiplayer:latest .
```

## Run

To download, for example, all episodes of the 'Radio 1 Rock Show with Daniel P Carter' to /tmp/downloads on your host machine, just run:

```
docker run -v /tmp/downloads:/downloads getiplayer:latest "Rock Show"
```
