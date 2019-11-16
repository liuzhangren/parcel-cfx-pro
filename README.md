# 如何使用?
1. 下载docker
2. make docker 进入容器并 yarn || npm install 安装依赖项目
3. make rebuild 编译source下的coffee文件到src下的js
4. yarn start 启动项目，容器对外端口具体请查看makefile文件中的 内外映射

## 暂未完善路由文件约束功能 需要手动import路由内容至react-router-dom