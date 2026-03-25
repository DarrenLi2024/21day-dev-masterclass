#!/bin/bash
cd ~/Code/github/21day-dev-masterclass

# 创建目录
mkdir -p docs/{day1-day7,day8-day14,day15-day21} resources

# 创建所有文档文件
touch docs/day1-day7/{01-环境搭建,02-Homebrew使用,03-Git基础,04-GitHub认证,05-Node.js安装,06-首次克隆,07-阶段总结}.md
touch docs/day8-day14/{08-npm使用,09-nvm使用,10-PostgreSQL,11-环境变量,12-部署流程,13-错误排查,14-阶段实战}.md
touch docs/day15-day21/{15-React项目,16-Vue项目,17-全栈项目,18-SSH配置,19-性能优化,20-个人环境,21-结业总结}.md
touch resources/{cheatsheet,troubleshooting,tools}.md

# 创建 README
touch README.md

# 创建 LICENSE
echo "MIT License" > LICENSE

echo "✅ 所有文档文件已创建"
echo ""
echo "下一步："
echo "1. 编辑 README.md"
echo "2. 编辑各个 .md 文件填入内容"
echo "3. git add ."
echo "4. git commit -m '添加学习文档'"
echo "5. git push"