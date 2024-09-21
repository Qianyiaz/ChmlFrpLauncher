# ChmlFrpLauncher

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/blob/main/README.md">中文</a>

## 1. Introduction to Development

This is a simple terminal batch file developed using command line instructions for Windows systems, meaning it can only run on Windows. Originally a batch processing file, it has been packaged into an exe file using Bat_To_Exe_Converter.

## 2. General Functionality

It is a tool that can start frpc, edit configuration files, download different versions of frpc, and perform updates. Frp is a widely used tunneling tool with decent performance, and it is fully open source on GitHub.

<a href="https://github.com/fatedier/frp">Click here to visit the source project</a>

## 3. How to Use

Simply start the application and input the number 123456 to use it. However, you must download frpc beforehand.

<a href="https://github.com/Qianyiaz/ChmlFrpLauncher/wiki">Click here to view the official wiki</a>

![Screenshot 2024-08-31 231123](https://github.com/user-attachments/assets/339155b7-3825-4270-9451-ae5a0c655fdc)

## 4. Features Overview

> (The version released in releases is the official version; if you want to download a faster and earlier version, you can download ChmlFrpLauncher.exe from the latest repository's bin folder)

ChmlFrpLauncher supports all languages, but you will need to translate it yourself by modifying the prefix in the config file. It will search for the corresponding files in the lang folder based on the character you filled in after `lang=` with the `.lang` suffix.

For example: `Name=zh_cn` `zh_cn.lang`

ChmlFrpLauncher will automatically check for updates, but those with slow access to GitHub may experience some delay. This feature is enabled by default and can be changed to `Update=false`.

When starting frpc, ChmlFrpLauncher will create a new window named as indicated in Name=. You only need to change the value following `Name=`.

For example: `Name=frpc` `frpc`

```
Version=1.8.4
Name=frpc 
Update=true
Lang=zh_cn
Path_file=c:\XX\XXX
Count=x
```

You can download relevant frpc and its configuration files. If you're in China, you can use Gitee mirrors for downloading without worrying about download issues. However, for updates, it still checks for updates on GitHub, as no domestic alternatives have been found yet.

![Screenshot 2024-08-31 231131](https://github.com/user-attachments/assets/ff13abed-c381-4140-aaf5-c1e40672db4e)

![Screenshot 2024-08-31 231118](https://github.com/user-attachments/assets/6083495f-ae09-4d1a-9440-479dedf7553f)

![Screenshot 2024-08-31 231241](https://github.com/user-attachments/assets/40f479d5-447c-4369-a9f7-455c5a6f447b)

> (The images are for reference only; the new version has undergone significant changes.)

## 5. Related Links

> Please give us a star! wwwwwwwwwww

<a href="https://space.bilibili.com/1582404131">Click here to visit Bilibili</a>
<a href="https://qm.qq.com/q/thFfQ0fFm2">Click here to visit QQ Group</a>
