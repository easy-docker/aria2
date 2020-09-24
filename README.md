# docker-aria2
通用的Aria2docker

# 使用
```
mkdir -p ~/.garia2
mkdir -p -v ~/Downloads
docker pull ghostry/aria2
docker container rm -f garia2
docker run -d \
    --name garia2 \
    --user $(id -u):$(id -g) \
    -p 6800:6800 \
    -e UPTRACKER=1 \
    -v ~/.garia2:/aria2/conf \
    -v ~/Downloads:/aria2/down \
    --restart always \
    ghostry/aria2
```
如果希望加密，可以使用
```
-e SECRET=YOUR_SECRET_CODE \
```
同时映射下载目录和配置目录可以使用,
```
-v /data/aria2:/aria2 \
```
在Linux系统下,可能需要以当前用户运行,以便维持下载文件的权限
```
--user $(id -u):$(id -g) \
```
如果需要每天更新 trackers
```
-e UPTRACKER=1
```
