# springboot-shiro

#### 项目介绍
Springboot + shiro权限管理。这或许是流程最详细、代码最干净、配置最简单的shiro上手项目了。

#### 开发环境

| 工具    | 版本或描述                |    
| ----- | -------------------- |    
| OS    | Windows 7            |    
| JDK   | 1.7+                 |    
| IDE   | IntelliJ IDEA 2017.3 |    
| Maven | 3.3.1                |    
| MySQL | 5.6.4                |    

#### 模块划分

| 模块         | 释义                      |    
| ---------- | ----------------------- |    
| shiro-core  | 核心业务类模块，提供基本的数据操作、工具处理等 |    
| shiro-admin | 后台管理模块                  |    

#### SQL Model

![首页](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/sql-model.png?v=1.0)

#### 使用说明

1. 使用IDE导入本项目
2. 新建数据库`CREATE DATABASE shiro;`
3. 导入数据库`docs/db/shiro.sql`
4. 修改(`resources/application.yml`)配置文件
   1. 数据库链接属性(可搜索`datasource`或定位到L.19) 
   2. redis配置(可搜索`redis`或定位到L.69)
5. 运行项目(三种方式)
   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar shiro-admin/target/shiro-admin.jar`
   2. 项目根目录下执行`mvn springboot:run`
   3. 直接运行`ShiroAdminApplication.java`
6. 浏览器访问`http://127.0.0.1:8080`

**用户密码**

_超级管理员_： 账号：root  密码：123456 

_普通管理员_： 账号：admin  密码：123456

**Druid监控**

_链接_： `http://127.0.0.1:8080/druid/index.html`

用户名：zyd-druid  密码：zyd-druid


#### 参与贡献

1. Fork 本项目
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

#### 图片预览

![首页](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/index.png?v=1.0)
![资源管理](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/root-resource.png?v=1.0)
![角色管理](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/root-role.png?v=1.0)
![角色分配资源](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/root-role[root].png?v=1.0)
![用户管理](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/root-user.png?v=1.0)
![用户分配角色](https://gitee.com/yadong.zhang/shiro/raw/master/docs/img/root-user[role].png?v=1.0)

_注：以上图片是以`root`用户登录，`admin`用户的界面请参考`docs/img`下的图片_

#### 生命不息，折腾不止！ 更多信息，请关注：
 1. [我的博客](https://www.zhyd.me)
 2. [我的微博](http://weibo.com/211230415)
 3. [我的头条号](http://www.toutiao.com/c/user/3286958681/)
 4. [我的imooc](http://www.imooc.com/u/1175248/articles)
 4. [我的CSDN](https://blog.csdn.net/u011197448)

#### 有任何问题可以
- [给我留言](https://www.zhyd.me/guestbook)


#### 开源协议
 [MIT](https://gitee.com/yadong.zhang/DBlog/blob/master/LICENSE)
