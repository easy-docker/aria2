# docker-aria2
通用的Aria2docker

# 使用
```
docker pull ghostry/aria2
docker container stop garia2 && docker container rm garia2
docker run -d \
--name garia2 \
-p 6800:6800 \
-v /data/aria2/down:/aria2/down \
--restart always \
ghostry/aria2
```
如果希望加密，可以使用
```
-e SECRET=YOUR_SECRET_CODE \
```
如果希望升级时保留任务进度，或需要自定配置，可以使用
```
-v /data/aria2/conf:/aria2/conf \
```
也可以使用
```
-v /data/aria2:/aria2 \
```
同时映射下载目录和配置目录
