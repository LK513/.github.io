@echo off
echo ========================================
echo GitHub Pages 部署向导（方案一）
echo ========================================
echo.
echo 第一步：创建GitHub仓库
echo 正在打开GitHub创建仓库页面...
echo.
start https://github.com/new
timeout /t 5 /nobreak >nul

echo 第二步：打开文件所在文件夹
echo 正在打开文件资源管理器...
echo.
start explorer "%~dp0"
timeout /t 2 /nobreak >nul

echo 第三步：上传文件到GitHub
echo.
echo 请按照以下步骤操作：
echo 1. 在打开的浏览器中创建仓库：
echo    - 仓库名：collection-agency-management
echo    - 选择：Public
echo    - 不要勾选 "Add a README file"
echo    - 点击 "Create repository"
echo.
echo 2. 创建仓库后，点击 "Add file" - "Upload files"
echo.
echo 3. 从打开的文件夹中拖拽以下文件到浏览器：
echo    - collection-agency-management.html
echo    - index.html
echo.
echo 4. 点击 "Commit changes"
echo.
echo ========================================
echo 第四步：启用GitHub Pages
echo ========================================
echo.
echo 1. 进入仓库页面
echo 2. 点击 "Settings" - "Pages"
echo 3. Source: "Deploy from a branch"
echo 4. Branch: "main"，目录: "/" (root)
echo 5. 点击 "Save"
echo 6. 等待2-3分钟
echo.
echo ========================================
echo 第五步：访问页面
echo ========================================
echo.
echo 部署成功后访问：
echo https://lk.github.io/collection-agency-management/
echo.
echo 按任意键打开文件夹...
pause >nul
explorer "%~dp0"