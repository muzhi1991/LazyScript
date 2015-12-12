# env
source ./config.sh
# install
#pip install shadowsocks

# config
SS_SERVER_ADDR=133.130.119.70
SS_SERVER_PORT=8989
SS_SERVER_PASSWD=zeM7oVL146vM9bilBHNo9bcSSRJNYsoC 
SS_SERVER_ENCRYPT_METHORD=aes-256-cfb

SS_LOCAL_PORT=1080

# generate config file
mkdir ~/ss
echo "{\n""\t\"server\":\"$SS_SERVER_ADDR\",\n""\t\"server_port\":$SS_SERVER_PORT,\n""\t\"local_address\":\"127.0.0.1\",\n""\t\"local_port\":$SS_LOCAL_PORT,\n""\t\"password\":\"$SS_SERVER_PASSWD\",\n""\t\"timeout\":300,\n""\t\"method\":\"$SS_SERVER_ENCRYPT_METHORD\",\n""\t\"fast_open\":false,\n""\t\"workers\":1\n""}" > ~/ss/config.json


# alias
## ss == 启动 shadowsock
alias ss="sslocal -c ~/ss/config.json"
echo "alias ss=\"sslocal -c ~/ss/config.json\"" >> $SHELL_CONFIG_PATH

## proxy/noproxy ==  命令行中启动/关闭代理
echo "alias proxy='export http_proxy=socks5://127.0.0.1:1080 https_proxy=socks5://27.0.0.1:1080'" >> $SHELL_CONFIG_PATH
echo "alias noproxy='unset http_proxy https_proxy'" >> $SHELL_CONFIG_PATH
