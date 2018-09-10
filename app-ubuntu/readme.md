# App Ubuntu

## 個別で実行する時

+ コンテナイメージのビルド

```
con_name=nodered_balus_ubuntu
docker build . -t ${con_name}-image
```

### デーモン起動する

+ run

```
docker run -d \
           --name ${con_name}-con\
           -p 1880:1880 \
           ${con_name}-image
```

+ コンテナにログイン

```
docker exec -it ${con_name}-con /bin/bash
```

### 一時的に立ち上げる(ログオフ後、すぐにコンテナ削除)

+ 起動 + ログイン

```
docker run -it \
           --rm \
           --name ${con_name}-con\
           -p 1880:1880 \
           ${con_name}-image \
           /bin/bash
```


## ブラウザで確認

http://127.0.0.1:1880
