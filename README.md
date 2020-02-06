# Node-RED on Docker Compose

## 出来ること

+ `docker-compose` を使用して、Node-REDを立ち上げることが出来ます。
+ ホストマシンに `docker` と `docker-compose` があれば動くので、ホストマシンの環境を汚しません。

## 使用しているソース

GitHub

+ node-red-docker
  + https://github.com/node-red/node-red-docker/tree/master

Docker Hub

+ nodered/node-red
  + https://hub.docker.com/r/nodered/node-red


## 使用方法

+ 起動

```
docker-compose up -d
```

+ 停止

```
docker-compose stop
```

+ 状態を確認

```
docker-compose ps
```

+ コンテナ削除

```
docker-compose rm -f
```

## ブラウザ確認

http://localhost:1880

## Tips

### コンテナを単体で試したい場合

+ [node-red/README](./node-red/README.md) を参照しましょう!! :rocket:
