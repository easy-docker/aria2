# docker-aria2
通用的Aria2docker

# 使用
```
docker pull ghostry/aria2
docker container stop garia2 && docker container rm garia2
docker run -d \
--name garia2 \
--user $(id -u):$(id -g) \
-p 6800:6800 \
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
在Linux系统下,可能需要以当前用户运行,以便维持权限
```
--user $(id -u):$(id -g) \
```