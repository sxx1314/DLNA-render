# DLNA-render

<h1><font color=Purple> 这是一个基于ubuntu18的dlna 音频接收器，
它可以利用DLNA/UPNP服务推送音频资源。 </font><br></h1>

最新的DLNA render实现（gmediarender）

### 目前进度
但是由于会暴露链接地址，因此现在在线收费音乐支持的很少。spotify/虾米/qq付费音乐都是不能推送的。
网易云/qq音乐 轮播正常,下一首暂停正常.
bubbleupnp完美 
其他客户端有少许兼容性问题待修复

### 更新日志
#### 20200605
- version 0.0.8 
- 1.修复部分app传递空url导致的下一首卡死问题. 
- 2.修复了上个版本由于两首歌的采样不同导致卡死问题.


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
