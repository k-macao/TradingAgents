#!/bin/bash
cd /workspaces/TradingAgents

if [ ! -f ".env" ];then
    echo "缺少.env"
    exit 1
fi

# 后台运行示例：分析AAPL，日志输出到app.log
nohup python -m cli.main --ticker AAPL --depth 2 > app.log 2>&1 &
echo "进程已后台启动，查看日志：tail -f app.log"
