@echo off
chcp 65001 >nul
title HTML文件一键部署到GitHub V2
echo.
echo ========================================
echo   HTML文件一键部署到GitHub V2
echo ========================================
echo.

echo 1. 检查Git状态...
git status --short
if %errorlevel% neq 0 (
    echo Git状态检查失败！
    pause
    exit /b 1
)

echo.
echo 2. 添加所有HTML文件...
git add *.html
if %errorlevel% neq 0 (
    echo 添加文件失败！
    pause
    exit /b 1
)

echo.
echo 3. 提交更改...
set /p commit_msg="请输入提交说明（直接回车使用默认）: "
if "%commit_msg%"=="" set commit_msg=Update HTML files
git commit -m "%commit_msg%"
if %errorlevel% neq 0 (
    echo 可能没有更改需要提交，继续...
)

echo.
echo 4. 推送到GitHub...
echo 请注意：如果需要认证，请输入GitHub用户名和密码/Token
echo.
git push origin main
if %errorlevel% neq 0 (
    echo.
    echo 推送失败！请检查：
    echo 1. 网络连接
    echo 2. GitHub凭据是否正确
    echo 3. 是否有推送权限
    echo.
    echo 按任意键退出...
    pause >nul
    exit /b 1
)

echo.
echo ========================================
echo   部署成功！
echo ========================================
echo.
echo 访问地址：
echo https://LK513.github.io/
echo.
echo 按任意键退出...
pause >nul