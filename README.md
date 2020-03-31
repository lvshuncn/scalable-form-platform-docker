# scalable-form-platform-docker
A standalone Scalable Form server

![GitHub](https://img.shields.io/github/license/alibaba/scalable-form-platform?style=flat)
![GitHub last commit](https://img.shields.io/github/last-commit/lvshuncn/scalable-form-platform-docker?style=flat)
![GitHub issues](https://img.shields.io/github/issues/lvshuncn/scalable-form-platform-docker)

<p align="center">
  <a href="https://github.com/alibaba/scalable-form-platform" target="_blank">
    <img max-width="1440" src="https://img.alicdn.com/tfs/TB1MnB9z7Y2gK0jSZFgXXc5OFXa-1440-900.png" />
  </a>
</p>

实际业务使用中，Scalable Form整体上由三个主要部分组成，一个表单渲染端，一个表单配置端，一个表单存储的服务端。

- Scalable Form渲染端由协议解释器和表单UI组件组成。因为解释器和UI组件的解耦，Scalable Form的sdk可以提供基于多种UI组件的表单渲染能力，包括antd和移动端antd-mobile。
- Scalable Form表单配置端可以通过可视化的方式来编排产出渲染端可用的表单配置。
- Scalable Form表单配置端产出的协议配置，渲染端可以直接使用。不过在实际使用中，还需要服务端来存储表单配置。不仅如此，服务端还可以串联起整个Scalable Form的使用场景，提供配置站点（权限控制，场景配置，自定义组件配置），表单填写页面，表单数据存储展示与简单的数据分析能力。

Scalable Form整体模块划分如下：
![Scalable Form整体模块图](https://img.alicdn.com/tfs/TB1oYCHAlr0gK0jSZFnXXbRRXXa-2870-1372.png)

## 快速使用
你可以从[docker hub](https://hub.docker.com/repository/docker/lvshuncn/scalable-form-platform/general)搜索到Scalable Form服务器的docker镜像
如果你在本地测试，你可以执行以下命令通过`scalable-form-platform`镜像开启一个Scalable Form服务器，端口绑定3000
```
docker run -d -p 3000:3000 lvshuncn/scalable-form-platform
```
开启后，访问`http://localhost:3000/xform/admin`即可使用Scalable Form独立站点
> 默认情况下docker中的Scalable Form会开启demo模式，demo模式仅用于快速演示，服务器以内存数据库的方式存储数据，重启后数据会清空，不要在生产环境下使用。生产环境使用方法请[查看文档](https://scalable-form-platform.github.io/#/zh/%E4%BD%BF%E7%94%A8dockerr)

更多文档配置说明，请[查看文档](https://scalable-form-platform.github.io/#/zh/%E4%BD%BF%E7%94%A8Node)

## Scalable Form站点功能介绍

目前的Scalable Form独立部署站点已经实现了哪些能力呢？

### 数据库初始化
初始连接数据库时，如果数据库的表table不存在，Scalable Form会开启初始化向导，引导用户初始化数据库。Scalable Form提供一键执行初始化能力，但对于某些场景，需要用户手动查看SQL，并自行初始化数据库
![](https://img.alicdn.com/tfs/TB1yMYunp67gK0jSZPfXXahhFXa-2238-1452.gif)

### 表单创建和可视化编排
通过站点，你可以方便创建和可视化编排Scalable Form表单。
![](https://img.alicdn.com/tfs/TB1o6P5nvb2gK0jSZK9XXaEgFXa-2238-1452.gif)

### 表单填写与提交
配置好的表单，Scalable Form会提供相应的PC和移动端表单页面，业务和运营可以直接投放对应的表单链接和二维码
![image.png](https://img.alicdn.com/tfs/TB1Vw__nrH1gK0jSZFwXXc7aXXa-2238-1522.gif)

### 表单提交与数据
默认数据会提交到Scalable Form独立站点，当然你可利用Scalable Form渲染sdk，自定义数据提交方式，Scalable Form站点提供数据展示，导出导入和数据分析能力
![image.png](https://img.alicdn.com/tfs/TB12wj6nEH1gK0jSZSyXXXtlpXa-2238-1522.gif)

