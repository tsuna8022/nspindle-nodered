FROM nodered/node-red:3.1

# 安装 dashboard 节点
RUN npm i --unsafe-perm --no-update-notifier --no-fund node-red-dashboard@3.6.6

# 拷贝“seed”目录
COPY seed /seed
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# 启动脚本
CMD ["/usr/local/bin/entrypoint.sh"]
