# 使用官方的 sub-store 镜像作为基础
FROM xream/sub-store:http-meta

# 合并前端和后端，使用单一端口提供服务
ENV SUB_STORE_BACKEND_MERGE=true

# 设置 Gist 同步的定时任务
ENV TIME_ZONE=Asia/Shanghai
ENV SUB_STORE_BACKEND_SYNC_CRON="50 23 * * *"
ENV SUB_STORE_BACKEND_UPLOAD_CRON="50 23 * * *"
