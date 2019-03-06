# docker-aria2
通用的Aria2docker

# 使用
```
docker run -d \
--name garia2 \
-p 6800:6800 \
-v /data/aria2:/aria2 \
-e SECRET=YOUR_SECRET_CODE \
--restart always \
ghostry/aria2
```
其中SECRET可选,

