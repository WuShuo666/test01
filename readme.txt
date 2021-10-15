ch02-ssm:整合spring+springMVC+mybatis

0、连接数据库：bjpowernode 创建表：student（id:auto_increment，name,age）
1、创建maven项目，引入依赖
    spring，springmvc，mybatis依赖，servlet，jsp依赖
    json（），数据库依赖，druid连接池依赖。

2、配置web.xml文件：
   1、注册中央调度器 DispatcherServlet：管理controller对象。
        1）注册servlet类：DispatcherServlet
        2）设置起属性值：启动是注册：<load-on-startup>
                      文件地址：<init-param>
   2、注册监听器ContextLoaderListener：管理Dao，service对象。
   3、注册字符集过滤器CharacterEncodingFilter:避免中文乱码。
        1）注册过滤器，类名：CharacterEncodingFilter
        2）设置其属性值：encoding为utf-8，其他俩个为true。
   4、创建各种包：dao，domain，service，controller
   5、写配置文件：springmvc，spring，mybatis，jdbc.properties。
        springmvc:
   6、写各种类和对应的配置文件。