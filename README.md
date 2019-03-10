# docker-aria2
通用的Aria2docker

# 使用
```
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
如果希望修改配置文件，把
```
-v /data/aria2/down:/aria2/down \
```
换成
```
-v /data/aria2:/aria2 \
```
