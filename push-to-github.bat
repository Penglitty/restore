@echo off
echo ============================================
echo 推送代码到 GitHub
echo ============================================
echo.

cd /d "%~dp0"

echo [1/4] 初始化 Git 仓库...
if not exist .git (
    git init
)
echo.

echo [2/4] 添加所有文件...
git add .
echo.

echo [3/4] 创建提交...
git commit -m "Deploy Cocos game to GitHub Pages"
echo.

echo [4/4] 推送到 GitHub...
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/Penglitty/restore.git
git push -u origin main
echo.

echo ============================================
echo 推送完成！
echo.
echo 现在请在浏览器中操作：
echo 1. 访问: https://github.com/Penglitty/restore/settings/pages
echo 2. 在 "Branch" 下选择: main
echo 3. 点击 "Save"
echo 4. 等待 1-2 分钟后访问: https://penglitty.github.io/restore
echo ============================================
pause
