# 21天从小白到精通——Mac OS个人开发者的必修课

> 从零开始，在 Mac 上搭建完整的 Web 开发环境，学会克隆和部署 GitHub 项目

## 🎯 项目简介

这是一个专为 macOS 开发者准备的学习路线，帮助你在 21 天内掌握：
- macOS 开发环境搭建
- Git 与 GitHub 使用
- Node.js 项目部署
- 数据库配置与管理
- 从 GitHub 克隆并运行各类 Web 项目



```markdown

> 从零开始，在 Mac 上搭建完整的 Web 开发环境，学会克隆和部署 GitHub 项目

[开始学习](#-学习路线) • [快速开始](#-快速开始) • [常见问题](#-常见问题) • [贡献指南](#-贡献指南)

</div>

---

## 📖 项目简介

### 为什么需要这份指南？

当你从 GitHub 上看到一个有趣的项目（比如博客系统、后台管理、个人仪表盘），它通常**没有 DMG 安装包**，不能像普通软件一样双击安装。你需要：

- 把代码**下载到本地**
- 安装项目需要的**依赖**
- 配置**数据库**等环境
- **启动**项目，然后在浏览器中访问

这个过程就是“部署”。掌握了这套技能，你就能运行 GitHub 上 90% 以上的 Web 项目。

### 🎯 目标受众

- 🌱 **零基础小白**：想学习 Web 开发但不知从何下手
- 💻 **前端转全栈**：需要搭建本地开发环境
- 🎓 **学生开发者**：想在 Mac 上运行 GitHub 项目
- 🔧 **技术爱好者**：想系统学习开发工具链

### 📊 你将学到什么

| 技能模块 | 学习内容 | 预计时间 |
|---------|---------|---------|
| **环境搭建** | Homebrew、Git、Node.js、nvm | 3天 |
| **版本控制** | Git 基础、GitHub 认证、SSH 配置 | 3天 |
| **项目部署** | npm/pnpm、PostgreSQL、环境变量 | 4天 |
| **实战演练** | React/Vue/全栈项目部署 | 7天 |
| **进阶技能** | 性能优化、个人环境打造 | 4天 |

---

## 🗺️ 学习路线

### 📅 第一阶段：基础入门（第 1-7 天）

> 搭建完整的开发环境，掌握基础工具链

<table>
<tr>
<td width="50%">

#### Day 1: 认识开发工具
- 理解为什么要搭建开发环境
- 了解各工具的作用和关系
- 熟悉终端基础命令

#### Day 2: Homebrew 包管理器
- 安装和配置 Homebrew
- 使用 brew 安装软件
- 管理服务（brew services）

#### Day 3: Git 版本控制
- Git 基础概念
- 常用 Git 命令
- 理解工作区、暂存区、仓库

#### Day 4: GitHub 认证配置
- HTTPS vs SSH 对比
- Personal Access Token 配置
- SSH 密钥生成与配置

</td>
<td width="50%">

#### Day 5: Node.js 环境搭建
- 使用 nvm 安装 Node.js
- 管理多个 Node 版本
- npm 基础使用

#### Day 6: 第一个克隆的项目
- git clone 详解
- 项目存放位置管理
- 运行第一个项目

#### Day 7: 阶段总结与练习
- 复习本周知识点
- 独立完成一个项目的克隆和运行
- 常见问题排查

</td>
</tr>
</table>

### 📅 第二阶段：核心技能（第 8-14 天）

> 深入理解项目部署的核心流程

<table>
<tr>
<td width="50%">

#### Day 8: npm 包管理器详解
- package.json 解析
- 依赖管理（dependencies vs devDependencies）
- npm scripts 使用

#### Day 9: nvm 深入使用
- 多版本管理
- 项目级 .nvmrc 配置
- 版本切换最佳实践

#### Day 10: PostgreSQL 数据库
- 安装和启动 PostgreSQL
- 基础 SQL 操作
- 数据库用户和权限管理

#### Day 11: 环境变量与配置
- .env 文件的使用
- 环境变量最佳实践
- 配置文件管理

</td>
<td width="50%">

#### Day 12: 项目部署完整流程
- 5 步部署法详解
- README 阅读技巧
- 依赖安装问题解决

#### Day 13: 常见错误排查
- curl 28 网络问题
- 端口占用解决
- 数据库连接失败

#### Day 14: 阶段实战
- 部署一个真实的全栈项目
- 独立完成从克隆到运行的全流程
- 项目配置和调试

</td>
</tr>
</table>

### 📅 第三阶段：实战精通（第 15-21 天）

> 通过实战项目巩固技能，打造个人开发环境

<table>
<tr>
<td width="50%">

#### Day 15: 部署 React 项目
- Vite/Next.js 项目部署
- 前端开发服务器配置
- 热更新原理

#### Day 16: 部署 Vue 项目
- Vue CLI 项目部署
- Pinia/Vuex 状态管理
- 路由配置

#### Day 17: 部署全栈项目
- 前后端分离项目部署
- API 代理配置
- 数据库迁移

#### Day 18: SSH 密钥深度配置
- SSH 多账号管理
- SSH 连接优化
- Git 多仓库配置

</td>
<td width="50%">

#### Day 19: 性能优化建议
- 项目启动速度优化
- 依赖管理优化
- 磁盘空间清理

#### Day 20: 打造个人开发环境
- Zsh 配置与美化
- VS Code 插件推荐
- 效率工具链

#### Day 21: 结业与未来方向
- 学习路线回顾
- 进阶学习建议
- 开源项目参与指南

</td>
</tr>
</table>

---

## 🚀 快速开始

### 前置要求

- 一台 Mac 电脑（Intel 或 Apple Silicon）
- 稳定的网络连接
- GitHub 账号（[免费注册](https://github.com)）

### 一键环境配置

```bash
# 1. 克隆本项目
git clone https://github.com/darrenli2024/21day-dev-masterclass.git
cd 21day-dev-masterclass

# 2. 运行环境配置脚本
chmod +x scripts/setup-env.sh
./scripts/setup-env.sh

# 3. 按顺序阅读文档
cd docs
ls -la
```

### 手动安装（如果你想一步步来）

<details>
<summary><b>点击展开手动安装步骤</b></summary>

```bash
# 1. 安装 Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. 安装 nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# 关闭终端重新打开

# 3. 安装 Node.js
nvm install --lts
nvm alias default --lts

# 4. 安装 Git（如果未安装）
brew install git

# 5. 安装 PostgreSQL（可选）
brew install postgresql
brew services start postgresql
```

</details>

---

## 📁 项目结构

```
21day-dev-masterclass/
├── README.md                 # 项目介绍与学习路线
├── LICENSE                   # MIT 开源协议
├── docs/                     # 学习文档（核心内容）
│   ├── day1-day7/           # 第一阶段：基础入门
│   │   ├── 01-环境搭建.md
│   │   ├── 02-Homebrew使用.md
│   │   ├── 03-Git基础.md
│   │   ├── 04-GitHub认证.md
│   │   ├── 05-Node.js安装.md
│   │   ├── 06-首次克隆.md
│   │   └── 07-阶段总结.md
│   ├── day8-day14/          # 第二阶段：核心技能
│   │   ├── 08-npm使用.md
│   │   ├── 09-nvm使用.md
│   │   ├── 10-PostgreSQL.md
│   │   ├── 11-环境变量.md
│   │   ├── 12-部署流程.md
│   │   ├── 13-错误排查.md
│   │   └── 14-阶段实战.md
│   └── day15-day21/         # 第三阶段：实战精通
│       ├── 15-React项目.md
│       ├── 16-Vue项目.md
│       ├── 17-全栈项目.md
│       ├── 18-SSH配置.md
│       ├── 19-性能优化.md
│       ├── 20-个人环境.md
│       └── 21-结业总结.md
├── scripts/                  # 自动化脚本
│   └── setup-env.sh         # 一键环境配置脚本
└── resources/                # 辅助资源
    ├── cheatsheet.md        # 命令速查表
    ├── troubleshooting.md   # 常见问题解决
    └── tools.md             # 推荐工具清单
```

---

## 🛠️ 命令速查

| 命令             | 作用           | 示例                                     |
| ---------------- | -------------- | ---------------------------------------- |
| `pwd`            | 显示当前目录   | `pwd` → `/Users/username`                |
| `ls -la`         | 列出所有文件   | `ls -la ~/Code`                          |
| `cd`             | 切换目录       | `cd ~/Code/github`                       |
| `git clone`      | 克隆仓库       | `git clone git@github.com:用户/项目.git` |
| `nvm install`    | 安装 Node 版本 | `nvm install --lts`                      |
| `brew install`   | 安装软件       | `brew install postgresql`                |
| `brew services`  | 管理服务       | `brew services start postgresql`         |
| `node --version` | 查看 Node 版本 | `node -v`                                |
| `npm install`    | 安装依赖       | `npm install`                            |
| `npm run dev`    | 启动开发服务   | `npm run dev`                            |

> 更多命令详见 [resources/cheatsheet.md](./resources/cheatsheet.md)

---

## ❓ 常见问题

<details>
<summary><b>Q: 为什么 git clone 时提示认证失败？</b></summary>

GitHub 已不再支持密码认证。解决方案：
1. 使用 Personal Access Token 代替密码
2. 配置 SSH 密钥（推荐）

详见 [Day 4: GitHub 认证配置](./docs/day1-day7/04-GitHub认证.md)
</details>

<details>
<summary><b>Q: 报错 curl 28 Failed to connect to github.com</b></summary>

这是网络问题。解决方案：
1. 使用 SSH 代替 HTTPS
2. 配置 Git 代理
3. 修改 DNS 或 hosts 文件

详见 [Day 13: 错误排查](./docs/day8-day14/13-错误排查.md)
</details>

<details>
<summary><b>Q: 如何选择合适的 Node 版本？</b></summary>

- 查看项目的 `package.json` 中的 `engines` 字段
- 使用 `nvm` 安装并切换到对应版本
- 一般推荐 LTS（长期支持）版本

详见 [Day 9: nvm 使用](./docs/day8-day14/09-nvm使用.md)
</details>

<details>
<summary><b>Q: PostgreSQL 连接失败怎么办？</b></summary>

```bash
# 检查服务状态
brew services list

# 启动服务
brew services start postgresql

# 检查端口占用
lsof -i :5432
```

详见 [Day 10: PostgreSQL](./docs/day8-day14/10-PostgreSQL.md)
</details>

<details>
<summary><b>Q: 这个项目适合完全零基础吗？</b></summary>

完全适合！本项目从最基础的终端命令开始讲起，假设读者没有任何开发经验。只要你能打开终端，就能跟着学完整个课程。
</details>

---

## 🤝 贡献指南

欢迎贡献！无论是：

- 📝 **修正错别字**：让文档更准确
- 🐛 **补充问题**：添加你遇到的错误和解决方案
- ✨ **优化代码**：改进配置脚本
- 🌟 **分享经验**：提供更好的学习方法

### 贡献步骤

1. Fork 本项目
2. 创建你的分支 (`git checkout -b feature/AmazingFeature`)
3. 提交修改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

---

## 📚 推荐资源

### 官方文档
- [Node.js 官方文档](https://nodejs.org/en/docs/)
- [Git 官方文档](https://git-scm.com/doc)
- [PostgreSQL 官方文档](https://www.postgresql.org/docs/)

### 社区资源
- [Stack Overflow](https://stackoverflow.com) - 遇到问题先搜索
- [GitHub 趋势榜](https://github.com/trending) - 发现热门项目
- [Dev.to](https://dev.to) - 开发者社区

### 推荐工具
- [VS Code](https://code.visualstudio.com) - 代码编辑器
- [TablePlus](https://tableplus.com) - 数据库管理工具
- [Postman](https://www.postman.com) - API 测试工具
- [Oh My Zsh](https://ohmyz.sh) - 终端增强

---

## 📄 许可证

本项目采用 MIT 协议开源，详见 [LICENSE](./LICENSE) 文件。

---

## 🌟 支持项目

如果你觉得这个项目对你有帮助，请给我们一个 ⭐️ Star！

[![Star History Chart](https://api.star-history.com/svg?repos=darrenli2024/21day-dev-masterclass&type=Date)](https://star-history.com/#darrenli2024/21day-dev-masterclass&Date)

---

<div align="center">

**⭐️ 如果这个项目帮到了你，请给个 Star ⭐️**

Made with ❤️ by [DarrenLi](https://github.com/darrenli2024)

[⬆ 返回顶部](#-21天从小白到精通mac-os个人开发者的必修课)

</div>
```bash

```

---

## 🎨 徽章说明

| 徽章                                                         | 含义             |
| ------------------------------------------------------------ | ---------------- |
| ![macOS](https://img.shields.io/badge/macOS-支持-blue)       | 支持 macOS 系统  |
| ![Node.js](https://img.shields.io/badge/Node.js-18+-green)   | 需要 Node.js 18+ |
| ![License](https://img.shields.io/badge/License-MIT-yellow)  | MIT 开源协议     |
| ![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen) | 欢迎贡献代码     |
| ![Stars](https://img.shields.io/github/stars/...)            | GitHub 星标数    |
| ![Forks](https://img.shields.io/github/forks/...)            | GitHub Fork 数   |

---

