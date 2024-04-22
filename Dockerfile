# 使用官方 Node.js 基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件
COPY . .

# 暴露端口 3000
EXPOSE 3000

# 启动 Node.js 应用
CMD ["node", "index.js"]
