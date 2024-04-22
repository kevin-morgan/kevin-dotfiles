# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# REBOOT / HALT / POWEROFF
# CPU
# PROCESS
# MEMORY
# DISK
# NETWORKING
# TIME
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# REBOOT / HALT / POWEROFF
# ---------------------------------------------------------------------

alias reboot="sudo /sbin/reboot"
alias poweroff="sudo /sbin/poweroff"
alias halt="sudo /sbin/halt"
alias shutdown="sudo /sbin/shutdown"


# ---------------------------------------------------------------------
# CPU
# ---------------------------------------------------------------------

if [[ "$OSTYPE" = darwin* ]]; then
  alias cpuinfo="sysctl -a machdep.cpu" # get the CPU information
  alias cpuno='sysctl hw.ncpu | awk "{ print $2 }"' # get the number of cores of CPU
  alias load="uptime | awk -F 'load averages: ' '{ print $2 }'"
else
  alias cpuinfo="lscpu" # get the CPU information
  # alias cpuinfo='less /proc/cpuinfo'
  alias cpuno="grep pro /proc/cpuinfo -c" # # get the number of cores of CPU
  alias load='uptime | sed -e "s/.*load average: \(.*\...\), \(.*\...\), \(.*\...\)/\1/" -e "s/ //g"'
fi


# ---------------------------------------------------------------------
# PROCESS
# ---------------------------------------------------------------------

alias pa="ps aux"
alias pg="ps aux | grep"
alias kill9="kill -9 $1"
if [[ "$OSTYPE" = darwin* ]]; then
  # get top process eating cpu #
  alias pscpu="ps aux | sort -nr -k 3"
  alias pscpu10="ps aux | sort -nr -k 3 | head -10"
  # get top process eating memory #
  alias psmem="ps aux | sort -nr -k 4"
  alias psmem10="ps aux | sort -nr -k 4 | head -10"
else
  # get top process eating cpu #
  alias pscpu="ps auxf | sort -nr -k 3"
  alias pscpu10="ps auxf | sort -nr -k 3 | head -10"
  # get top process eating memory #
  alias psmem="ps auxf | sort -nr -k 4"
  alias psmem10="ps auxf | sort -nr -k 4 | head -10"
fi


# ---------------------------------------------------------------------
# MEMORY
# ---------------------------------------------------------------------

if [[ "$OSTYPE" = darwin* ]]; then
  alias meminfo="top -l 1 | awk '/PhysMem/' | cut -d ':' -f 2"
else
  alias meminfo="free -tomh"
fi


# ---------------------------------------------------------------------
# DISK
# ---------------------------------------------------------------------

alias du='du -h'
if [[ "$OSTYPE" = darwin* ]]; then
  alias df="df -H"
  alias du1="du -d 1 -h"
  alias duf='du -sh *'
else
  alias diskinfo="df -HT"
  alias du1="du -c --max-depth=1"
fi
alias mounted="mount | column -t"


# ---------------------------------------------------------------------
# NETWORKING
# ---------------------------------------------------------------------

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
if [[ "$OSTYPE" = darwin* ]]; then
  alias ipl="ifconfig | grep -w inet | grep -v 127.0.0.1 | awk '{print $3}' | cut -d ':' -f 2"
else
  alias ipl="ifconfig | grep -w inet | grep -v 127.0.0.1 | awk '{print $2}' | cut -d ':' -f 2"
fi
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

alias p5="ping -c 5"
alias pp="prettyping"
alias nt="nexttrace"
alias traceroute="traceroute -I"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

if [[ "$OSTYPE" = darwin* ]]; then
  alias connections="netstat -a -p tcp"
  alias ports="lsof -i -P | grep -i 'listen'"
else
  alias connections="netstat -tulanp"
  alias ports="netstat -atp | grep -i 'listen'"
fi


# ---------------------------------------------------------------------
# TIME
# ---------------------------------------------------------------------

# alias now="date +'%T %z, %a, %Y-%m-%d'"
alias now="date +'TIME: %H:%M:%S %z%nDATE: %Y-%m-%d%n DAY: %a%nWEEK: %V'"
alias ntime="date +'%T'"
alias ndate="date +'%d-%m-%Y'"
alias nday="date +'%a'"
alias nweek="date +'%V'"



