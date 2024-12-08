#!/bin/bash

#Author :mifongjvav
#thanks :kimi.ai,S.II
#Version :2.0.3



# 输出欢迎信息
echo "欢迎使用NTCAssistant"
echo "------------------------"
echo "-Author :mifongjvav-"
echo "-thanks :kimi.ai，S.II-"
echo "-Ver. 2.0.3-"
echo "------------------------"

# 检查root
echo -e "\e[1mRoot用户身份查询:\e[0m"
echo -e "USER-ID: \e[4m"`id -u`-`getprop ro.product.system.device`"\e[0m"
if [ `id -u` -eq 0 ]
    then echo -e "ROOT权限: \e[32m是\e[0m"
else echo -e "ROOT权限: \e[31m否\e[0m"
    exit 101
fi

#输入包名
read -p "请输入客户端包名：" PackageName
# 切换目录
cd /data/user/0/$PackageName/files/games/com.netease/minecraftpe/

# 写入ctrl_enableNewTouchControlSchemes:0
echo "ctrl_enableNewTouchControlSchemes:0" >> "options.txt"

# 让用户输入数字（1-3）
read -p "请输入新触控样式（1-3 1，触屏，2，传统 3，分离控制 : " num

# 根据输入的数字执行不同的操作
if [ "$num" -eq "1" ]; then
    echo "ctrl_interactionModel:0" >> "options.txt"
elif [ "$num" -eq "2" ]; then
    echo "ctrl_interactionModel:1" >> "options.txt"
else
    echo "ctrl_interactionModel:2" >> "options.txt"
fi

# 结束
echo "执行成功，重启游戏生效"
exit