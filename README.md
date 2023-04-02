<div id="top"></div>

# Book Bazaar
"Book Bazaar is a Java and Spring-based platform hosted on GitHub. It is designed to facilitate the sale of secondhand books within a campus community. Explore our wide selection of pre-owned titles and find your next favorite read at an affordable price."

## Table of Contents
[toc]


## Demonstration


<div align="center">
   <a href="https://www.youtube.com/watch?v=6LnoqbcFH84">
<!--    <img src="https://github.com/vincezh2000/Navvy-Man/blob/main/Navvy_logo.jpg" width="600" /> -->
   </a>
</div>


<p align="right">(<a href="#top">back to top</a>)</p>


<ul> 


## Features

系统采用MVC设计模式，结合AOP面向切面编程的思想，通过将系统的各个功能分层，单独进行编程，实现业务逻辑和数据库之间的低耦合。应用传统JDBC和阿里Druid数据库连接池对MySQL数据库进行增删改查操作，同时应用springMVC、JSTL、filter、listener、servlet、json、AJAX等技术对系统进行优化，使系统具有更好的安全性和可拓展性。该系统主要实现发布二手书信息、搜索图书信息、购物车购买以及后台管理和维护等功能。系统中有三种用户角色，管理员、注册用户和未注册用户。管理员主要有管理图书后台、更改图书后台信息等操作，注册用户进入系统可以购买图书、使用购物车等操作，未注册用户只能够看见查看二手书的发售信息。系统的实现在未来将为学生提供很大的便利，并且为书籍的有效循环利用提供了途径。

## 产品功能
1、用户登陆与注册模块：
用户的登录与注册模块是基于Java EE项目的三层架构实现的。
DAO层的UserDao接口实现对数据库store的CRUD功能。
Service层的UserService负责处理业务逻辑，并调用DAO层保存到数据库。
Web层的LoginServlet和RegistServlet负责获取请求参数，封装为Bean对象后，再调用Service层处理业务逻辑，最后请求转发并重定向给客户端。
2、图书模块：
图书模块借用MVC的概念，通过解耦合，让各层的代码尽可能独立工作，不产生依赖，方便后期升级和维护。
POJO中的对象作为Model，将相关的数据封装为JavaBean类，不掺杂与数据处理的相关代码。
JSP页面作为View视图展示页面，并发送请求给Controller，同时调用Model中的数据填充页面。
Servlet、service和dao承担着controller的角色，接受页面请求，处理请求，并将参数封装为JavaBean对象。通过三者相互配合形成MVC，将软件代码拆分为组建，单独开发组合使用。
3、购物车模块：
通常来说购物车实现的方法有三种，第一种就是利用session域，第二种是通过把商品存入数据库，第三种则是使用redis+数据库+cookie的方法。我们使用服务器的session域来实现购物车功能。
将用户状态和购物车状态信息存放在session域中，以实现在一个客户端与服务器的对话中保存数据。
4、订单管理：
5、分页模块：
6、数据库模块：
使用MySQL数据库进行对数据的增删改查操作。

## System Design
1、Dao层
与数据连接相关的功能的类，连接数据库连接池并对数据库进行增删改查操作。
2、Filter层
通过Filter组件实现对用户的权限控制。
目前系统中分为三种权限：
第一种是游客模式只能够访问一些基础的页面，无法购买商品。
第二种是普通用户模式，可以访问系统的大部分页面并且购买商品。
第三种则是管理员模式，管理员模式除了拥有普通用户的功能外，还可以在后台管理系统中，对图书的库存进行管理。
3、POJO层
Pojo层中都是待封装的JavaBean对象，每一个类的数据元素都是私有的，但是提供一个公有的的方法来对对象中的私有数据进行操作。
4、Service层
	Service层中调用dao层中的方法访问数据库，并返回对应的数据给web层中的servlet程序。
5、Utils层
	Utils层中主要是一些公有的工具类，增加代码的复用性。
6、Web层
	Web层中主要是servlet类，负责获取请求参数，封装为Bean对象后，再调用Service层处理业务逻辑，最后请求转发并重定向给客户端



<p align="right">(<a href="#top">back to top</a>)</p>


## Installation

> Open your terminal or CMD.
> Requirement:jdk 1.8, IDE Intellij version 2020.3.X or higher
```bash
git clone https://github.com/vincezh2000/book-bazaar.git
cd book-bazaar
```
Open this project and work on your IDE.

## Homepage

Welcome to my personal [homepage](https://vincezh2000.github.io/vincezh/), pleas feel free to contact me!

## Contributing


Thanks so much to all of our amazing contributors!


<p align="right">(<a href="#top">back to top</a>)</p>
