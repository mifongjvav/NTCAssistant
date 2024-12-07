#!/bin/bash

#Author :mifongjvav
#thanks :kimi.ai,S.II
#Version :1.0.0



# 输出欢迎信息
echo "欢迎使用NTCAssistant"
echo "------------------------"
echo "-Author :mifongjvav-"
echo "-thanks :kimi.ai，S.II-"
echo "-Ver. 1.0.0-"
echo "------------------------"

# 检查root
echo -e "\e[1mRoot用户身份查询:\e[0m"
echo -e "USER-ID: \e[4m"`id -u`-`getprop ro.product.system.device`"\e[0m"
if [ `id -u` -eq 0 ]
    then echo -e "ROOT权限: \e[32m是\e[0m"
else echo -e "ROOT权限: \e[31m否\e[0m"
    exit 101
fi

# 让用户输入版本
read -p "基岩版还是网易版?(输入1或2)"

# 根据输入的数字执行不同的操作
if [ "$num" -eq 1 ]; then
# 切换目录
cd /data/user/0/com.mojang.minecraftpe/files/games/com.mojang/minecraftpe/

# 写入ctrl_enableNewTouchControlSchemes:0
echo "ctrl_enableNewTouchControlSchemes:0" >> "options.txt"

# 让用户输入数字（1-3）
read -p "请输入新触控样式（1-3 1，触屏，2，传统 3，分离控制 : " num

# 根据输入的数字执行不同的操作
if [ "$num" -eq 1 ]; then
    echo "ctrl_interactionModel:0" >> "options.txt"
elif [ "$num" -eq 2 ]; then
    echo "ctrl_interactionModel:1" >> "options.txt"
else
    echo "ctrl_interactionModel:2" >> "options.txt"
fi

# 结束
echo "执行成功，重启游戏生效"
exit

elif [ "$num" -eq 2 ]; then
# 切换目录
cd /data/user/0/com.netease.x19/files/games/com.netease/minecraftpe/

# 写入ctrl_enableNewTouchControlSchemes:0
echo "ctrl_enableNewTouchControlSchemes:0" >> "options.txt"

# 让用户输入数字（1-3）
read -p "请输入新触控样式（1-3 1，触屏，2，传统 3，分离控制）: " num

# 根据输入的数字执行不同的操作
if [ "$num" -eq 1 ]; then
    echo "ctrl_interactionModel:0" >> "options.txt"
elif [ "$num" -eq 2 ]; then
    echo "ctrl_interactionModel:1" >> "options.txt"
else
    echo "ctrl_interactionModel:2" >> "options.txt"
fi

# 结束
echo "执行成功，重启游戏生效"
exit
else
    
fi
