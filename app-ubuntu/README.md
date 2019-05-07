# App Ubuntu

## 個別で起動してみたい場合

### イメージ作成

+ コンテナイメージのビルド

```
con_name=nodered_balus_ubuntu
docker build . -t ${con_name}-image
```

### コンテナを起動する

+ RUN

```
docker run -d \
           --name ${con_name}-con\
           -p 1880:1880 \
           ${con_name}-image
```

+ コンテナにログインしたい場合

```
docker exec -it ${con_name}-con /bin/bash
```

### ブラウザで確認

http://127.0.0.1:1880

### 起動しているコンテナの削除

+ STOP

```
docker stop ${con_name}-con
```

+ REMOVE

```
docker rm -f ${con_name}-con
```
