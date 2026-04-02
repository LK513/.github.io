@echo off
setlocal enabledelayedexpansion

echo ========================================
echo GitHub Pages 部署脚本
echo ========================================
echo.

set REPO_NAME=collection-agency-management
set USERNAME=lk

echo 1. 检查Git配置...
git config --global user.name >nul 2>&1
if %errorlevel% neq 0 (
    echo 警告：未设置Git用户名
    echo 请运行: git config --global user.name "您的名字"
)

git config --global user.email >nul 2>&1
if %errorlevel% neq 0 (
    echo 警告：未设置Git邮箱
    echo 请运行: git config --global user.email "您的邮箱@example.com"
)

echo.
echo 2. 检查远程仓库...
git remote -v | findstr origin >nul
if %errorlevel% equ 0 (
    echo 远程仓库已配置：
    git remote -v
) else (
    echo 远程仓库未配置
)

echo.
echo ========================================
echo 手动部署步骤：
echo ========================================
echo.
echo 第一步：创建GitHub仓库
echo 1. 访问 https://github.com/new
echo 2. 仓库名称: %REPO_NAME%
echo 3. 选择 Public
echo 4. 不要勾选 "Add a README file"
echo 5. 点击 "Create repository"
echo.
echo 第二步：推送代码
echo 复制以下命令并执行（替换为实际仓库URL）：
echo.
echo   git remote add origin https://github.com/%USERNAME%/%REPO_NAME%.git
echo   git branch -M main
echo   git push -u origin main
echo.
echo 第三步：启用GitHub Pages
echo 1. 进入仓库页面 → Settings → Pages
echo 2. Source: Deploy from a branch
echo 3. Branch: main
echo 4. 目录: / (root)
echo 5. 点击 Save
echo 6. 等待1-2分钟
echo 7. 访问: https://%USERNAME%.github.io/%REPO_NAME%/
echo.
echo ========================================
echo 或者使用GitHub CLI自动部署：
echo ========================================
echo.
echo 1. 安装GitHub CLI: https://cli.github.com/
echo 2. 登录: gh auth login
echo 3. 运行: gh repo create %REPO_NAME% --public --source=. --push
echo 4. 启用Pages: gh api repos/%USERNAME%/%REPO_NAME%/pages -f source=main
echo.
echo ========================================
echo 当前状态：
echo ========================================
echo.
echo Git状态：
git status --short
echo.
echo 本地仓库URL：
echo https://github.com/%USERNAME%/%REPO_NAME%
echo.
echo 部署后访问地址：
echo https://%USERNAME%.github.io/%REPO_NAME%/collection-agency-management.html
echo.
echo 按任意键继续...
pause >nul