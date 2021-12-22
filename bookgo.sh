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
