# 基于Appserv、php、Mysql技术实现数码商城网页设计

---------------------------------------------------------------------
## 一、项目介绍
### 1.1 项目背景
  本次项目是大二下期间修Web开发设计课程而开发，项目借鉴PHP WEB 程序设计与项目案例开发（微课版）和网上资料。
  
### 1.2 项目技术
  项目涵盖的技术主要包括：

    php
    javascript 
    Mysql
    Appserv
### 1.3 项目展示
![](img/1656660843519.jpg)

![](img/1656660866159.jpg)

![](img/1656663974667.jpg)

![](img/1656664072581.jpg)

![](img/1656664103629.jpg)
---------------------------------------------------------------------
## 二、工作准备


### 2.1 文件介绍
    具体参考READ.pdf 文件，有详细介绍文件和代码
    
### 2.2 数据库配置

    这里我默认你是使用Appserv来开发（没有可以去搜安装Appserv和使用教程）。
  首先将本项目clone到 C:\AppServ\www\ 下，
  然后复制ashuma.sql 的路径，比如我是 C:\AppServ\www\DigitalMail\db\ashuma.sql，
  打开cmd窗口，登入Mysql，
  输入source ashuna.sql 的路径，比如我就是source C:\AppServ\www\DigitalMail\db\ashuma.sql
  ![](img/1656664185976.jpg)

![](img/14a0d12acac1b41411d9a984a5fa47b.png)

  然后修改dbconfig.php文件的相关mysql参数，更改为你的Mysql的名称和密码，其他不变。
  ![](img/1656664623871.jpg)


  **到这里你已经成功导入数据库和数据表**

### 2.3 默认登录账号
     用户账号：xiaojie  密码：111111
     管理员账号：admin  密码：111111