# Node-RED of Contanier

## これは何 ?

+ この Repository のルートディレクトリの docker-compose.yaml にて使用される Dockerfile です。
  + docker-compose.yaml がうまく動作しない場合は、個別で起動してデバックをしましょう。

## 個別で起動する場合

### イメージ作成

+ コンテナイメージのビルドをします。

```
export _con_name='nodered-dockercompose-single'
docker build . -t ${con_name}-image
```

### コンテナの起動

+ run コマンドを用いて、起動します。

```
docker run -d \
           --name ${con_name}-con\
           -p 1880:1880 \
           ${con_name}-image
```

### コンテナにログインしたい場合

+ exec コマンドを用いて、ログイン出来ます。 ---> :whale:

```
docker exec -it ${con_name}-con /bin/bash
```

### Node-RED の Version の確認

+ :whale: Node-RED は以下の JS ファイルで起動しています。 

```
/usr/src/node-red/node_modules/node-red/red.js
```
```
### 例

$ /usr/src/node-red/node_modules/node-red/red.js -v
6 Feb 15:04:53 - [info]

Welcome to Node-RED
===================

6 Feb 15:04:53 - [info] Node-RED version: v1.0.3
6 Feb 15:04:53 - [info] Node.js  version: v12.13.0
6 Feb 15:04:53 - [info] Linux 4.19.76-linuxkit x64 LE
6 Feb 15:04:54 - [info] Loading palette nodes
6 Feb 15:04:54 - [info] Settings file  : /usr/src/node-red/.node-red/settings.js
6 Feb 15:04:54 - [info] Context store  : 'default' [module=memory]
6 Feb 15:04:54 - [info] User directory : /usr/src/node-red/.node-red
6 Feb 15:04:54 - [warn] Projects disabled : editorTheme.projects.enabled=false
6 Feb 15:04:54 - [info] Flows file     : /usr/src/node-red/.node-red/flows_bca486d03556.json
6 Feb 15:04:54 - [info] Creating new flow file
6 Feb 15:04:54 - [warn]

---------------------------------------------------------------------
Your flow credentials file is encrypted using a system-generated key.

If the system-generated key is lost for any reason, your credentials
file will not be recoverable, you will have to delete it and re-enter
your credentials.

You should set your own key using the 'credentialSecret' option in
your settings file. Node-RED will then re-encrypt your credentials
file using your chosen key the next time you deploy a change.
---------------------------------------------------------------------

6 Feb 15:04:54 - [error] Unable to listen on http://127.0.0.1:1880/
6 Feb 15:04:54 - [error] Error: port in use
```

### ブラウザで確認

+ ホストマシン上の Docker Engine 上で動かしている場合は、以下の URL で確認が出来ます。
  + http://127.0.0.1:1880
  + :warning: リモートサーバで起動している場合は、FW などを設定の上で IP アドレスを読み替えて下さい。

### 起動しているコンテナの削除

+ stop コマンドを用いて、停止させましょう。

```
docker stop ${con_name}-con
```

+ rm コマンドを用いて、削除しましょう。

```
docker rm -f ${con_name}-con
```
