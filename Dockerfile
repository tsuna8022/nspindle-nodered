FROM nodered/node-red:3.1

# 装 dashboard 节点（与你本地一致的版本）
RUN npm i --unsafe-perm --no-update-notifier --no-fund node-red-dashboard@3.6.6

# 复制种子数据（flows、settings、静态资源）
COPY seed /seed

# 复制启动脚本并修正 Windows 行尾，再加执行权限
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN sed -i 's/\r$//' /usr/local/bin/entrypoint.sh \
    && chmod +x /usr/local/bin/entrypoint.sh

# 入口：让脚本决定如何把 /seed 内容放到 /data，并启动 Node-RED
CMD ["/usr/local/bin/entrypoint.sh"]
