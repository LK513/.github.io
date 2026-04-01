@echo off
chcp 65001 >nul
title HTML文件一键部署到GitHub
echo.
echo ========================================
echo   HTML文件一键部署到GitHub
echo ========================================
echo.

echo 1. 检查Git状态...
git status --short

echo.
echo 2. 添加所有HTML文件...
git add *.html

echo.
echo 3. 提交更改...
set /p commit_msg="请输入提交说明（直接回车使用默认）: "
if "%commit_msg%"=="" set commit_msg=Update HTML files
git commit -m "%commit_msg%"

echo.
echo 4. 推送到GitHub...
echo 请输入GitHub用户名和密码/Token
git push origin main

echo.
echo ========================================
echo   部署完成！
echo ========================================
echo.
echo 访问地址：
echo https://LK513.github.io/
echo.
echo 按任意键退出...
pause >nul