#!/bin/bash

# AOJU AI Frontier - 自动化部署脚本
echo "🚀 启动 AOJU AI Frontier 部署流程..."

# 1. 检查 wrangler 是否安装
if ! command -v wrangler &> /dev/null
then
    echo "❌ 错误: 未找到 wrangler。请运行 'npm install -g wrangler' 安装。"
    exit 1
fi

# 2. 模拟构建过程 (假设使用简单的静态打包)
echo "📦 正在构建项目资源..."
mkdir -p dist
cp index.html dist/
# 如果有其他静态资源，请在此添加拷贝逻辑

# 3. 执行部署
echo "☁️ 正在上传至 Cloudflare..."
wrangler pages deploy dist --project-name aoju-ai-frontier

echo "✨ 部署完成！您的平台已上线。"
