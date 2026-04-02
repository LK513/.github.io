# HTML页面部署指南

## 方案一：本地预览（最简单）

### 使用Python服务器
1. 确保已安装Python 3
2. 在项目目录打开终端
3. 运行命令：
   ```bash
   python serve.py
   ```
4. 浏览器会自动打开页面，地址：http://localhost:8000

### 直接双击打开
直接双击 `collection-agency-management.html` 文件，会在浏览器中打开（部分样式可能需要服务器环境）。

## 方案二：GitHub Pages（免费部署）

### 步骤：
1. **创建GitHub仓库**
   - 登录 https://github.com
   - 点击 "New repository"
   - 仓库名：`collection-agency-management`
   - 选择 "Public"
   - 点击 "Create repository"

2. **上传文件**
   ```bash
   git init
   git add collection-agency-management.html
   git commit -m "Initial commit"
   git remote add origin https://github.com/你的用户名/collection-agency-management.git
   git push -u origin main
   ```

3. **启用GitHub Pages**
   - 进入仓库页面
   - 点击 "Settings" → "Pages"
   - Source选择 "main" 分支
   - 点击 "Save"
   - 几分钟后访问：https://你的用户名.github.io/collection-agency-management/

## 方案三：Netlify Drop（最简单部署）

### 步骤：
1. 访问 https://app.netlify.com/drop
2. 将包含HTML文件的文件夹拖拽到页面
3. 自动部署，获得随机URL
4. 可自定义域名

## 方案四：Vercel（推荐）

### 步骤：
1. 安装Vercel CLI：
   ```bash
   npm i -g vercel
   ```
2. 在项目目录运行：
   ```bash
   vercel
   ```
3. 按照提示完成部署
4. 获得免费域名

## 在飞书文档中嵌入

部署后获得URL，使用以下格式嵌入飞书文档：
```html
<iframe url="https://你的部署URL" type="12" width="100%" height="600"/>
```

## 注意事项
- 确保HTML文件中的相对路径正确
- 如有外部资源，确保可访问
- 建议使用方案二（GitHub Pages）或方案三（Netlify）进行免费部署