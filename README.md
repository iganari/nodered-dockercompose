# Node-RED on Docker Compose

## 出来ること

+ `docker-compose` を使用して、Node-REDを立ち上げることが出来ます
+ ホストサーバに `docker` と `docker-compose` があれば動くので、ホスト環境を汚しません

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

### appコンテナを単体で試したい場合

+ [app-ubuntu/README](https://github.com/iganari/nodered-dockercompose/blob/master/app-ubuntu/README.md) を参照する
