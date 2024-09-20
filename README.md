# ChmlFrpLauncher

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/blob/main/README_en.md">English</a>

## 1.开发介绍

  这是一个windows系统中终端代码所开发的简单终端bat文件，所以只能在Windows中运行。
原本他是一个批处理文件，但通过Bat_To_Exe_Converter打包成exe文件。

## 2.大概功能

  它是一个能启动frpc，并能编辑配置文件，下载不同版本的frpc，可更新的工具。
而frp是一种应用广泛，性能中规中矩的内网穿透工具，而且在Github完全开源。

<a href="https://github.com/fatedier/frp">点击前往源项目</a>

## 3.如何使用

只需启动后输入123456数字即可使用，但在之前要下载frpc。

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/wiki">点击前往查看官方wiki</a>

![屏幕截图 2024-08-31 231123](https://github.com/user-attachments/assets/339155b7-3825-4270-9451-ae5a0c655fdc)

## 4.功能介绍
>
>(目前发布在releases为正式版，想下载快早版本可以从最新仓库bin文件中下载ChmlFrpLauncher.exe文件)

  ChmlFrpLauncher支持所有语言，但是你必须自己翻译，只需要在confing文件中修改为文件前缀，
会根据你填lang=后面的字符加上.lang后缀在lang文件夹中寻找对应文件。

例如： `Name=zh_cn`  `zh_cn.lang`

  ChmlFrpLauncher会自动检查更新，但是对github访问慢的会有一定程度的影响，
但这个功能默认是开着的，需要改成 `Update=false`

  ChmlFrpLauncher在启动frpc时会新建窗口，窗口名称Name，只需要修改Name=
后面的frpc即可。

例如： `Name=frpc`  `frpc`

```
Version=1.8.4
Name=frpc 
Update=true
Lang=zh_cn
Path_file=c:\XX\XXX
Count=x
```

  可以下载相关的frpc和他的配置文件，国内下载使用Gitee镜像下载源不必
担心下载问题，但是在更新时仍然使用Github检测更新下载，目前没找到国内替代品。

![屏幕截图 2024-08-31 231131](https://github.com/user-attachments/assets/ff13abed-c381-4140-aaf5-c1e40672db4e)

![屏幕截图 2024-08-31 231118](https://github.com/user-attachments/assets/6083495f-ae09-4d1a-9440-479dedf7553f)

![屏幕截图 2024-08-31 231241](https://github.com/user-attachments/assets/40f479d5-447c-4369-a9f7-455c5a6f447b)

>(目前图片仅供参考，新版本已经大变样)

## 5.相关链接
>
>求star wwwwwwwwwww

<a href="https://space.bilibili.com/1582404131">点击前往billbill</a>
<a href="https://qm.qq.com/q/thFfQ0fFm2">点击前往QQ群</a>
