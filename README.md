# finch-playground

finch起動
```shell
finch vm init
finch vm start
finch vm stop
```
で管理

docker-composeに当たる処理
```shell
cd node_container
finch compsoe up --build
finch compose down
```

attachする
```shell
finch compose run app bash
```
でアタッチできる

## わからんこと
hot reloadが聞かない