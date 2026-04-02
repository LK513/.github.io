# GitHub Pages 404 错误排查

## 常见原因及解决方案

### 1. 仓库未创建或未推送
**症状**：404错误
**解决**：
```bash
# 检查远程仓库
git remote -v

# 如果为空，添加远程仓库
git remote add origin https://github.com/lk/collection-agency-management.git

# 推送代码
git push -u origin main
```

### 2. 文件不在根目录
**症状**：文件存在但URL不对
**解决**：
- 确保 `collection-agency-management.html` 在仓库根目录
- 已添加 `index.html` 作为入口文件

### 3. GitHub Pages未启用
**症状**：404错误
**解决**：
1. 进入仓库 → Settings → Pages
2. Source: **Deploy from a branch**
3. Branch: **main**，目录: **/** (root)
4. 点击 Save
5. 等待1-2分钟

### 4. 分支部署错误
**症状**：404错误
**解决**：
- 确保部署分支是 `main`（不是 `master`）
- 检查目录设置是 `/` (root)

## 当前状态检查

运行以下命令检查：
```bash
git status
git remote -v
git log --oneline -5
```

## 正确URL格式
部署成功后，访问：
```
https://lk.github.io/collection-agency-management/
```
或直接访问HTML文件：
```
https://lk.github.io/collection-agency-management/collection-agency-management.html
```

## 重新部署步骤
如果仍有问题：
1. 删除GitHub仓库重新创建
2. 推送代码：
   ```bash
   git push -f origin main
   ```
3. 重新启用GitHub Pages
4. 等待5分钟