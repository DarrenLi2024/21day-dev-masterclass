#!/bin/bash

# 21天开发环境配置脚本
# 用法: ./scripts/setup-env.sh

set -e  # 遇到错误立即退出

echo "🚀 开始配置 macOS 开发环境..."
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. 检查 Homebrew
echo "📦 检查 Homebrew..."
if ! command -v brew &> /dev/null; then
    echo "   ❌ Homebrew 未安装，正在安装..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # 添加 Homebrew 到 PATH（针对 Apple Silicon Mac）
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "   ✅ Homebrew 已安装"
fi

echo ""

# 2. 检查 Git
echo "📦 检查 Git..."
if ! command -v git &> /dev/null; then
    echo "   ❌ Git 未安装，正在安装..."
    brew install git
else
    echo "   ✅ Git 已安装: $(git --version)"
fi

echo ""

# 3. 安装 nvm
echo "📦 安装 nvm..."
if [ ! -d "$HOME/.nvm" ]; then
    echo "   ⏳ 正在安装 nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    
    # 添加 nvm 到当前 shell
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    echo "   ✅ nvm 安装完成"
else
    echo "   ✅ nvm 已安装"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

echo ""

# 4. 安装 Node.js LTS
echo "📦 安装 Node.js LTS..."
if command -v node &> /dev/null; then
    echo "   ✅ Node.js 已安装: $(node --version)"
    read -p "   是否重新安装最新 LTS 版本？(y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        nvm install --lts
        nvm alias default --lts
    fi
else
    nvm install --lts
    nvm alias default --lts
fi

echo ""

# 5. 创建代码目录
echo "📁 创建代码目录..."
mkdir -p ~/Code/{github,work,lab}
echo "   ✅ 已创建目录结构："
echo "      ~/Code/github/  # GitHub 开源项目"
echo "      ~/Code/work/    # 工作项目"
echo "      ~/Code/lab/     # 学习实验项目"

echo ""

# 6. 配置 Git 优化
echo "🔧 配置 Git..."
git config --global credential.helper osxkeychain
git config --global http.postBuffer 524288000
git config --global http.lowSpeedLimit 0
git config --global http.lowSpeedTime 999999
echo "   ✅ Git 配置完成"

echo ""

# 7. 检查 PostgreSQL（可选）
echo "🗄️  检查 PostgreSQL..."
if command -v psql &> /dev/null; then
    echo "   ✅ PostgreSQL 已安装: $(psql --version)"
else
    read -p "   是否安装 PostgreSQL？(y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        brew install postgresql
        brew services start postgresql
        echo "   ✅ PostgreSQL 安装并启动完成"
    else
        echo "   ⏭️  跳过 PostgreSQL 安装"
    fi
fi

echo ""

# 8. 配置 SSH 密钥（可选）
echo "🔐 检查 SSH 密钥..."
if [ -f ~/.ssh/id_ed25519.pub ]; then
    echo "   ✅ SSH 密钥已存在"
    echo "   公钥内容："
    cat ~/.ssh/id_ed25519.pub
else
    read -p "   是否生成 SSH 密钥？(y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ssh-keygen -t ed25519 -C "$(whoami)@$(hostname)" -f ~/.ssh/id_ed25519 -N ""
        eval "$(ssh-agent -s)"
        ssh-add ~/.ssh/id_ed25519
        echo "   ✅ SSH 密钥已生成"
        echo "   请将以下公钥添加到 GitHub："
        echo ""
        cat ~/.ssh/id_ed25519.pub
        echo ""
        echo "   GitHub 添加位置：Settings → SSH and GPG keys → New SSH key"
    else
        echo "   ⏭️  跳过 SSH 密钥生成"
    fi
fi

echo ""
echo "${GREEN}✨ 环境配置完成！${NC}"
echo ""
echo "📝 后续步骤："
echo "1. 重新打开终端，或执行: source ~/.zshrc"
echo "2. 测试 Node.js: node --version"
echo "3. 测试 Git: git --version"
echo "4. 如需配置 GitHub 认证，参考文档 docs/day1-day7/04-GitHub认证.md"
echo ""
echo "🎯 开始学习："
echo "   cd ~/Code/github/21day-dev-masterclass"
echo "   按顺序阅读 docs/ 目录下的文档"
