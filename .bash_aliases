# my aliases
volumeFunction(){
	#change the system volume from terminal by giving percent (0-100 w/o the % sign)
    if (( $# != 1 ))
    then
        echo "Usage: 'vol <volume>' where 0<volume<100"
    else
	    amixer -q sset 'Master' $1%
    fi
}
alias vol=volumeFunction #set volume to percent value 0-100

function up( )
{
#go up N levels: up <N>
LIMIT="$1"
P="$PWD"
for ((i=1; i <= LIMIT; i++))
do
    P="$P/.."
done
cd "$P"
export MPWD="$P"
}


#export SDCV_PAGER="/usr/bin/less"

alias timer="python /home/matt/Programming/BashFunctions/timer.py" #set a timer in the terminal

alias alarm="python /home/matt/Programming/BashFunctions/alarm.py" #set an alarm in the terminal

alias web="python /home/matt/Programming/BashFunctions/web.py" #search internet info text file

alias aweb="python /home/matt/Programming/BashFunctions/addToWeb.py" #add entry to internet info text file

alias eweb="gvim /home/matt/Documents/NOTES/internet.txt" #edit internet info text file

alias enc="python /home/matt/Programming/BashFunctions/encrypt.py" #encrypt/decrypt a text file

alias todo="vim /home/matt/.todo" #open my todo list in vim

alias bset="xbacklight =" #set backlight percentage

alias bu="xbacklight -inc 10" #increase backlight brightness

alias bd="xbacklight -dec 10" #decrease backlight brightness

alias bfull="xbacklight -inc 100" #increase backlight to max

alias boff="xbacklight -dec 100" #decrease backlight to zero (screen off)

alias blow="boff;bset 1"

alias bnz-netguard="python /home/matt/.bnz" #view my netgaurd info

#alias savedtext="echo 'this is a sample of saved text to put in the clipboard from terminal with an alias' | xclip -selection clipboard"

alias exip="curl -s checkip.dyndns.com | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'" #display my external ip address

alias nzon="python /home/matt/Programming/BashFunctions/nzon-time.py" #convert NZ time to Ontaro and vice versa

alias dropbox="nohup ~/.dropbox-dist/dropboxd &>/dev/null &" #open dropbox in background (disown from shell and don't send closing message if the shell is closed)

#alias mets="python /home/matt/Programming/BashFunctions/MetService/get_all_weather.py" #update all weather info for desktop

#alias mets_record="python /home/matt/Programming/BashFunctions/MetService/long_term/get_forecast.py" #check for new forecasts for long term monitoring of metservice forecast accuracy

alias bcx="bc -q -l /home/matt/.bcrc"

alias rename_movies="python ~/Programming/BashFunctions/rename_movies.py"

alias rename_shows="python ~/Programming/BashFunctions/rename_shows.py"

alias ddg="cat ~/Documents/DuckDuckGo_bangs"

alias eddg="vim ~/Documents/DuckDuckGo_bangs"

alias o="xdg-open" #opens a file with default program or "o ." opens current directory in file browser

alias clear_history="cd /home/matt/;history -c;rm .bash_history;cd -"

alias clipboard="xclip -selection clipboard" #use with piping and cat to output file contents to clipboard

alias episodes="vim /home/matt/episodes"

alias say="espeak"

alias define="~/Programming/BashFunctions/define.sh"

alias thesaurus="~/Programming/BashFunctions/thesaurus.sh"

alias define_computers="sdcv -u 'GNU/Linux English-English Dictionary' -u 'Free On-Line Dictionary of Computing' -u 'Jargon File'"

alias flux="xflux -l -41 -g 174"

alias otime="python /home/matt/Programming/BashFunctions/ottawa-time.py"
alias ottawa="python /home/matt/Programming/BashFunctions/ottawa-time.py"

alias abook="python /home/matt/Programming/Python/book_list/addToBookList.py"
alias ebl="vim /home/matt/Documents/NOTES/book_list.txt"
alias bs="python /home/matt/Programming/Python/book_list/bookSearch.py"

alias joan="echo 'Joan Wood';echo '134-1250 Mississauga Valley Blvd';echo 'Mississauga, Ontario, Canada';echo 'L5A 3R6'"

alias dbstatus="/home/matt/.dropbox/dropbox.py status"
alias dbstart="/home/matt/.dropbox/dropbox.py start"
alias dbstop="/home/matt/.dropbox/dropbox.py stop"

alias python2="/usr/bin/python"
