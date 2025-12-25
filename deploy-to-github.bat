@echo off
echo ============================================
echo GitHub Pages 部署脚本
echo ============================================
echo.

REM 检查是否已经初始化 git
if not exist .git (
    echo [1/5] 初始化 Git 仓库...
    git init
    echo.
) else (
    echo [1/5] Git 仓库已存在，跳过初始化
    echo.
)

echo [2/5] 添加所有文件到暂存区...
git add .
echo.

echo [3/5] 创建提交...
git commit -m "Deploy Cocos game to GitHub Pages"
echo.

echo [4/5] 设置主分支为 main...
git branch -M main
echo.

echo [5/5] 准备推送到 GitHub...
echo.
echo ============================================
echo 请按照以下步骤完成部署：
echo.
echo 1. 在 GitHub 创建新仓库（如果还没创建）
echo    访问: https://github.com/new
echo.
echo 2. 复制你的仓库 URL，格式如下：
echo    https://github.com/Penglitty/restore.git
echo.
echo 3. 运行以下命令（替换为你的仓库 URL）：
echo    git remote add origin https://github.com/Penglitty/restore.git
echo    git push -u origin main
echo.
echo 4. 在 GitHub 仓库设置中启用 GitHub Pages
echo    Settings -^> Pages -^> Source: main branch -^> Save
echo.
echo 5. 等待几分钟后，访问：
echo    https://Penglitty.github.io/restore
echo ============================================
pause
