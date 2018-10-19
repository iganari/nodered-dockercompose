# Node-RED on Docker Compose

## 出来ること

+ docker-composeでNode-REDを立ち上げることが出来ます
+ ホストサーバにdockerとdocker-composeがあれば動くんで、ホスト環境を汚しません


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
dockerc-compose rm -f
```

## ブラウザ確認

http://localhost:1880

## Tips

### appコンテナを単体で試したい場合

+ [app-ubuntu/readme](https://github.com/iganari/nodered-dockercompose/blob/master/app-ubuntu/readme.md) を参照する
