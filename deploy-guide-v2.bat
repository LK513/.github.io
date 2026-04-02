@echo off
chcp 65001 >nul
title GitHub Pages 部署向导
echo.
echo ========================================
echo   GitHub Pages 部署向导（方案一）
echo ========================================
echo.
echo 【第一步】创建GitHub仓库
echo.
echo 1. 浏览器将打开GitHub创建仓库页面
echo 2. 仓库名：collection-agency-management
echo 3. 选择：Public
echo 4. 不要勾选 "Add a README file"
echo 5. 点击 "Create repository"
echo.
echo 按任意键打开GitHub...
pause >nul
start https://github.com/new
echo.
echo 已打开GitHub，请在浏览器中创建仓库。
echo.
pause

echo 【第二步】打开文件所在文件夹
echo.
echo 1. 文件资源管理器将打开
echo 2. 你会看到两个HTML文件：
echo    - collection-agency-management.html
echo    - index.html
echo.
echo 按任意键打开文件夹...
pause >nul
start explorer "%~dp0"
echo.
echo 文件夹已打开。
echo.
pause

echo 【第三步】上传文件到GitHub
echo.
echo 1. 在GitHub仓库页面，点击 "Add file" - "Upload files"
echo 2. 从打开的文件夹拖拽两个HTML文件到浏览器
echo 3. 点击 "Commit changes"
echo.
echo 请在浏览器中完成上传。
echo.
pause

echo 【第四步】启用GitHub Pages
echo.
echo 1. 进入仓库页面
echo 2. 点击 "Settings" - "Pages"
echo 3. Source: "Deploy from a branch"
echo 4. Branch: "main"，目录: "/" (root)
echo 5. 点击 "Save"
echo 6. 等待2-3分钟
echo.
echo 请在浏览器中完成设置。
echo.
pause

echo 【第五步】访问页面
echo.
echo 部署成功后访问：
echo https://lk.github.io/collection-agency-management/
echo.
echo 如果404错误，请检查：
echo 1. 仓库是否为Public
echo 2. Pages是否已启用
echo 3. 分支是否为main
echo.
echo 按任意键退出...
pause >nul