#!/bin/sh
/opt/homebrew/bin:/Users/faneaster/.nvm/versions/node/v15.13.0/bin:/Users/faneaster/.jenv/shims:/Users/faneaster/.jenv/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/easter/Library/Android/sdk/tools:/Users/easter/Library/Android/sdk/platform-tools
# 记录一下开始时间
echo `date` >> /Users/faneaster/Documents/bookgolog/log &&
# 进入bookgo.sh 所在目录
cd /Users/faneaster/Library/Application Support/navi/cheats/navi-cheats &&
# 执行命令
git add . && git commit -m 'Auot-update' && git pull origin master --rebase && git push origin master 
# 运行完成
echo 'finish' >> /Users/faneaster/Documents/bookgolog/log



【7月】github 简历编写
二航局维护心得编写 
2022 搭建自己的 devops 工具箱，帮助企业从 0-1 搭建敏捷开发环境，从需求 ->  代码 -> 流水线 -> 镜像仓库 -> k8s 部署 
3点半自动删除未触发条件单 - 防止遗留到第二天 
kanbi 数据备份和恢复
【8月】wekan纳入devops 工具箱，研究其数据备份和恢复 