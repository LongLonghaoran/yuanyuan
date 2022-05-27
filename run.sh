# 不知道为什么这里必须得通过端口转发,puma才可以访问,通过.sock文件一直connection refused
docker run --rm -p 3000:3000 -v /tmp/pids:/app/tmp/pids -v /tmp/sockets:/app/tmp/sockets -v /Users/eddy/workspace/yuanyuan/db/production.sqlite3:/app/db/production.sqlite3 yuanyuan:release-0.1
