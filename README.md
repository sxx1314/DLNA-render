# DLNA-render

<h1><font color=Yellow> 这是一个基于ubuntu18的dlna 音频接收端，
它可以DLNA推送音频资源，例如HomePod </font><br></h1>

最新的DLNA render实现（gmediarender）

### 目前进度 
网易云/qq音乐轮播正常  
下一首暂停正常 
bubbleupnp完美 
其他客户端有少许兼容性问题待修复

### 更新日志
20200605 更新修复小bug version 0.0.8


# Docker 命令:
## 仅支持 `host` 模式:
#### `< xxx >` 替换为你喜欢的名字.
```
docker run -d \
--name <container name> \
-e UPNP_DEVICE_NAME=<dlna renderer name> \
--net=host \
--device /dev/snd:/dev/snd \
 --restart unless-stopped \
sxx1314/dlna-render
```
注释:
  这一行 `-e UPNP_DEVICE_NAME=<dlna renderer name>`  可以删除 
  删除之后默认命名规则为 `HomePod-$(hostname)` 