# 部署指南

目标：将站点部署到腾讯云服务器 `160.202.47.107`，通过 `ducia.site/psjhl` 访问。

## 服务器信息

| 项目 | 值 |
|------|-----|
| IP | 160.202.47.107 |
| 用户 | root |
| 系统 | Ubuntu 22.04 |

## 1. 登录服务器

```bash
ssh root@160.202.47.107
```

## 2. 安装 Nginx

Nginx 是一个高性能的 Web 服务器，负责接收浏览器请求并返回网页文件。

```bash
apt update && apt install -y nginx
```

## 3. 创建站点目录

```bash
mkdir -p /var/www/jhljc
```

`/var/www/` 是 Linux 约定存放网站文件的目录。

## 4. 配置 Nginx

创建配置文件 `/etc/nginx/conf.d/jhljc.conf`：

```nginx
server {
    listen 80;                  # 监听 80 端口（HTTP）
    server_name ducia.site;     # 匹配 ducia.site 这个域名

    location /jhljc {           # 当访问 ducia.site/jhljc 时
        alias /var/www/jhljc;   # 映射到服务器上的 /var/www/jhljc 目录
        index index.html;       # 默认首页文件
    }
}
```

**解释：**
- `listen 80` — 接收 HTTP 请求（浏览器默认端口）
- `server_name ducia.site` — 只有访问这个域名时才生效
- `location /jhljc` — 匹配 URL 路径 `/jhljc`
- `alias /var/www/jhljc` — 把 `/jhljc` 路径映射到实际文件夹
- `index index.html` — 没指定文件名时默认返回 `index.html`

写入并生效：

```bash
cat > /etc/nginx/conf.d/jhljc.conf << 'EOF'
server {
    listen 80;
    server_name ducia.site;

    location /jhljc {
        alias /var/www/jhljc;
        index index.html;
    }
}
EOF

nginx -t && systemctl reload nginx
```

- `cat > 文件 << 'EOF' ... EOF` — 把多行内容写入文件
- `nginx -t` — 检查配置文件语法是否正确
- `systemctl reload nginx` — 让 Nginx 重新加载配置（不中断服务）

## 5. 退出服务器

```bash
exit
```

## 6. 本地构建并上传

```bash
make deploy
```

这会自动执行：
1. `mkdocs build` — 构建静态网站到 `site/` 目录
2. `rsync -avz --delete site/ root@160.202.47.107:/var/www/jhljc/` — 同步到服务器

## 7. 验证

浏览器打开 `http://ducia.site/jhljc` 即可访问。
