### Global ###
#eval $(thefuck --alias)
alias trans="/opt/trans"
alias untar='tar -zxvf '
alias wget='wget -c '
alias getpass="openssl rand -base64 20"
alias ping='ping -c 5'
alias www='python -m SimpleHTTPServer 8000'
alias ipe='curl ipinfo.io/ip'
alias exa='exa-linux-x86_64'

### Python ###
alias conda='/opt/anaconda3/bin/conda'
alias python3.6='/opt/anaconda3/bin/python3.6'
alias ipython3='/opt/anaconda3/bin/ipython3'
alias black='python3.6 -m black'

### Elastic ###
alias es-start="sudo systemctl start elasticsearch.service && sudo systemctl start kibana.service"
alias es-stop="sudo systemctl stop elasticsearch.service && sudo systemctl stop kibana.service"

### Aliases for DE3 ###
# SSH
#alias de3-nn="ssh 35.233.8.138"
#alias de3-n3="ssh 35.242.172.193"
#alias de3-elk="ssh 35.204.16.60"

