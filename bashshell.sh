#!/bin/bash

# 获取机器架构 x86/arm
release_arch=$(uname -m)
# 发行版本：centos redhat
release_version=$(lsb_release -a)
cat /etc/*release
cat /etc/os-release 
cat /etc/system-release


# 获取cpu型号
cpu_model=$(cat /proc/cpuinfo | grep 'model name' |uniq)
# 获取 CPU 个数
cpu_num=$(cat /proc/cpuinfo | grep 'physical id' | uniq | wc -l)
# 获取 CPU 核数
cpu_core_num=$(cat /proc/cpuinfo | grep 'cpu cores' | uniq)

#获取内存情况
mem_total=$(free | awk 'NR==2{print $2}')

#获取磁盘使用率
disk_total=$(fdisk -l | grep Disk)

#报警时间
now_time=$(date '+%F %T')

function main() {
    echo -e "\n CPU 型号为： ${cpu_model}，有 ${cpu_num} 个 ${cpu_core_num} 核CPU。"
    echo -e "\n 内存大小为：${mem_total}"
    echo -e "\n 磁盘大小为：${disk_total}"
    echo -e "\n 发行版本为：${release_version}"
    echo -e "\n 系统架构：${release_arch}"
}
main
