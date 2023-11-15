# 使用 Node.js 官方镜像
FROM node:latest

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 设置环境变量
ENV OPENAI_API_KEY=sk-your-key

# 暴露端口 (假设你的应用监听3000端口)
EXPOSE 3000

# 启动命令
CMD ["npm", "run", "dev"]
