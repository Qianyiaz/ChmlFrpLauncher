<p align="center">
    <img src="https://github.com/user-attachments/assets/1cbdf8df-3910-4bc2-91a7-a5768aa41557"
        height="195">
</p>
<div align="center">

# ChmlFrpLauncher
`ChmlFrpLauncher` 是 [frp](https://github.com/fatedier/frp) 的第三方控制台应用，适用于 Windows 11/10.

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher">![Github stars](https://img.shields.io/github/stars/Qianyiaz/ChmlFrpLauncher.svg)</a>
[![GitHub Releases Stats](https://img.shields.io/github/downloads/Qianyiaz/ChmlFrpLauncher/total.svg?logo=github)](https://github.com/Qianyiaz/ChmlFrpLauncher)
[![GitHub release](https://img.shields.io/github/tag/Qianyiaz/ChmlFrpLauncher.svg?label=release)](github.com/Qianyiaz/ChmlFrpLauncher)
<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/blob/1.8.4/README_en.md">![English](https://img.shields.io/badge/English-click-blue)</a>

<br/>
</div>

## 1.开发介绍

这是一个windows系统中终端代码(batch)所开发的简单终端程序，所以只能在Windows中运行，还有他需要win10或win11及以上的运行环境，win10以下可能会出现下载失败的提示，需安装powershell和curl，不支持32操作系统。

作者有想象做个安装包，把环境也一起打包。(同意的举手)

原本他是一个批处理文件，但通过Bat_To_Exe_Converter打包成exe文件。

<br/>

## 2.大概功能

而它需要配置ini/toml文件，需要在Frp网站获取，例如ChmlFrp。如果你不知道如何配置请查看ChmlFrp官方文档。

<a href="https://docs.chcat.cn/docs/chmlfrp/%E4%BD%BF%E7%94%A8%E6%96%87%E6%A1%A3/tutorial">点击前往官方文档</a>

它是一个能启动frpc，并能编辑配置文件，下载不同版本的frpc，可更新的工具。而frp是一种应用广泛，性能中规中矩的内网穿透工具，而且在Github完全开源。

<a href="https://github.com/fatedier/frp">点击前往源项目</a>

<br/>

## 3.如何使用

只需启动后输入123456数字即可使用，但在之前要下载frpc。

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/wiki">点击前往查看官方wiki</a>

![9ca0cc9e5eae117d240d51a6f251b745](https://github.com/user-attachments/assets/98b03b2f-e4c1-402f-a2bb-a87c5f85788f)

<br/>

## 4.功能介绍
>
>(目前发布在releases为正式版，想下载快早版本可以从最新仓库bin文件中下载ChmlFrpLauncher.exe文件)

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/raw/refs/heads/1.8.5/Integrat/Bin/ChmlFrpLauncher.exe">![Download](https://img.shields.io/badge/Download-click-blue)</a>

### 4.1.语言设置与支持

ChmlFrpLauncher支持所有语言，但是你必须自己翻译，只需要在confing文件中修改为文件前缀，
会根据你填lang=后面的字符加上.lang后缀在lang文件夹中寻找对应文件。

例如： `Lang=zh_cn`  `zh_cn.lang`

<br/>

### 4.2.自动检查更新开启与关闭

ChmlFrpLauncher会自动检查更新，但是对github访问慢的会有一定程度的影响，
但这个功能默认是开着的，需要改成 `Update=false`

<br/>

### 4.3.启动窗口设置

ChmlFrpLauncher在启动frpc时会新建窗口，窗口名称Name，只需要修改Name=
后面的frpc即可。

例如： `Name=frpc`  `frpc`

<br/>

#### 4.4. .config 基本结构

```
Version=1.8.5
Name=frpc 
Update=true
Lang=zh_cn
Path_file=c:\XX\XXX
Count=x
```

<br/>

### 4.5.下载源Github/Gitee

可以下载相关的frpc和他的配置文件，国内下载使用Gitee镜像下载源不必
担心下载问题，但是在更新时仍然使用Github检测更新下载，目前没找到国内替代品。

### 4.6.图例

![44867dbfc5a9b9c2819cb873883f3131](https://github.com/user-attachments/assets/1ac8ffe4-7649-4a76-b0f0-dbeb702f00fc)

![QQ_1727694284413](https://github.com/user-attachments/assets/a28c15ae-9548-4a94-9e4c-5e710c188e13)

![0c5eacd574dbda6e681a595c931dc2ce](https://github.com/user-attachments/assets/e4add26b-ca78-4128-ac11-60cef6ed9d13)

>(目前图片仅供参考，新版本已经大变样) 

<br/>

## 5.相关链接
>
>求star wwwwwwwwwww

<a href="https://space.bilibili.com/1582404131">点击前往billbill</a>
<a href="https://qm.qq.com/q/thFfQ0fFm2">点击前往QQ群</a>
<a href="https://github.com/Qianyiaz/ChmlFrp_Professional_Launcher">点击前往重构项目</a>
