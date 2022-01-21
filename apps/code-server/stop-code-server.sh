set -x
set -e

sudo ps aux | grep -G /code-server | grep -v grep | awk '{print $2}' | xargs kill -9
