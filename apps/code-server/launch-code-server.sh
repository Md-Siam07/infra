set -x
set -e

cd ~ && nohup code-server --bind-addr 0.0.0.0:8081 2>/dev/null &

