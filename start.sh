#!/bin/bash
cd /workspaces/TradingAgents

# 检查环境文件
if [ ! -f ".env" ];then
    echo "警告：缺少.env密钥配置文件，请先配置API密钥"
    exit 1
fi

# 启动交互式程序
echo "=====启动 TradingAgents 智能投研程序====="
tradingagents
