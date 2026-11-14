# ci-cd-examples

CI/CD 示例：镜像构建、推送、部署。包含 GitHub Actions 和 Jenkins 两种写法。

## 目录

- `.github/workflows/docker-build-push.yml`：构建镜像并推送到 GitHub Container Registry
- `.github/workflows/deploy-ssh.yml`：通过 SSH 部署到服务器并重启服务
- `jenkins/Jenkinsfile`：等价的 Jenkins Pipeline
- `scripts/deploy.sh`：远程部署辅助脚本

## 需要配置的 Secrets

- `REGISTRY_USERNAME` / `REGISTRY_PASSWORD`：镜像仓库账号
- `DEPLOY_HOST` / `DEPLOY_USER` / `DEPLOY_KEY`：部署服务器的 SSH 信息

> 在仓库 Settings → Secrets and variables → Actions 里配置。
