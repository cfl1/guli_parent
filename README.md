# 谷粒学院

### 介绍
在线教育顾名思义，是以网络为介质的教学方式，通过网络，学员与教师即使相隔万里也可以开展教学活动，此外，借助网络课件，学员还可以随时随地进行学习，真正打破了时间和空间的限制，对于工作繁忙，学习时间不固定的职场人而言网络远程教育是最方便不过的学习方式。

谷粒学院（在线教育项目），是一个B2C模式的职业技能在线教育系统，分为前台用户系统和后台运营平台。


## 项目的启动运行

### 1. 后端项目
1. 将后端项目克隆到本地，导入到idea中
2. nacos, 在目录下，打开bin文件夹，双击 `startup.cmd`
3. redis，在目录下，使用cmd，然后输入 `redis-server redis.windows.conf`
4. 将项目中 sql文件 导入到 navicat 中
5. 修改配置文件（包含mysql、nacos、redis、短信、微信登录 / 支付、短信）配置
6. 启动后台各模块（注意启动顺序：`ApiGatewayApplication`，`ServiceAclApplication`、`EduApplication`）其余服务没有顺序
7. 课程管理 后台swagger地址（举例）：http://localhost:8001/swagger-ui.html

**注意**：

1. 前期学习阶段使用了nginx, 在目录下，使用cmd，然后输入 `nginx.exe`
2. 如果关闭cmd窗口，nginx不会停止的。需要使用 `nginx.exe -s stop` 进行手动关闭，重启命令`nginx -s reload`

### 2. 前端项目
管理端

1. 将管理端前台（`education-vue-admin`）项目克隆到本地，导入到vscode中
   1. 安装依赖 `npm install`，不行可以用`cnpm`
2. 启动项目 `npm run dev`
3. 浏览器访问：http://localhost:9528/

用户端

1. 将用户前端（`education-vue-web`）项目，导入到vscode中
2. 安装依赖 `npm install`
3. 启动项目 `npm run dev`
4. 浏览器访问：http://localhost:3000/

## 项目源码

* education-vue-admin：后端的前台页面

* education-vue-web：前端的前台页面

* vue1010：项目中练习的页面

**注意**：课程评论功能已完成。

## 模块与数据库对应

### 1、数据库对应

### 2、模块对应

**注意**：已将数据同步模块从项目中删除。

## 项目学习笔记

从项目搭建 到 每个功能的具体实现 再到 项目总结

项目运行截图、知识点总结及分析、项目学习中遇到的问题

> 功能都正常，可供参考，可以根据自己实际需要进行调整，对你有帮助的话，点个star吧!!!
