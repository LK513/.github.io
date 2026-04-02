# 一键部署配置说明

## 首次使用配置

### 1. 生成GitHub Personal Access Token
1. 访问 https://github.com/settings/tokens
2. 点击 **Generate new token (classic)**
3. 勾选 **repo** 权限
4. 点击 **Generate token**
5. 复制生成的token（以 `ghp_` 开头）

### 2. 配置Git凭据
运行以下命令（替换为您的token）：
```bash
git config --global credential.helper store
echo https://您的用户名:您的token@github.com > ~/.git-credentials
```

### 3. 测试部署
双击运行 `deploy.bat`

## 日常使用

### 每次更新HTML后：
1. 双击 `deploy.bat`
2. 输入提交说明（可直接回车）
3. 自动上传到GitHub
4. 等待1-3分钟，访问 https://LK513.github.io/

## 文件结构建议
```
openAI/
├── collection-agency-management.html  # 主页面
├── index.html                         # 入口文件
├── new-page.html                      # 新页面
├── deploy.bat                         # 一键部署脚本
└── CONFIGURE.md                       # 配置说明
```

## 注意事项
1. 新HTML文件直接放入当前文件夹
2. 运行deploy.bat前确保网络连接
3. 如遇到认证错误，重新配置token
4. 部署后可能需要1-3分钟生效