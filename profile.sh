if [[ -s /Users/mattk/.rvm/scripts/rvm ]] ; then source /Users/mattk/.rvm/scripts/rvm ; fi
  

# cd
alias ..='cd ..'

# ls
alias ls="ls -FG"
alias l="ls -lAhG"
alias ll="ls -lG"
alias la='ls -AG'

#svn
alias st="svn stat ."
alias svni="svn info ."
alias svnc="svn commit ."
alias svno="svn stat . | grep ?"
alias br="cd `ruby -e 'puts Dir[\"/Users/mattk/svn/wp2/www/branches/*\"].map {|dir| dir if dir =~ /ver-\d+/i}.compact.sort.reverse.first'`"




# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# commands starting with % for pasting from web
alias %=' '
alias wp2="cd ~/svn/wp2/www/trunk"
export PATH="/opt/local/bin:/usr/local/bin:/usr/local/sbin:/Applications/MAMP/Library/bin:$PATH" 
alias drush="/opt/local/bin/drush/drush"
alias mysqldump="/Applications/MAMP/Library/bin/mysqldump"
alias mysql="/Applications/MAMP/Library/bin/mysql"
alias svngg="cd ~/svn/code/app/drupal"
#export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\] # '

function elite
{

local GRAY="\[\033[1;30m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local CYAN="\[\033[0;36m\]"
local LIGHT_CYAN="\[\033[1;36m\]"
local NO_COLOUR="\[\033[0m\]"

case $TERM in
    xterm*|rxvt*)
        local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        local TITLEBAR=""
        ;;
esac

local temp=$(tty)
local GRAD1=${temp:5}
PS1="$TITLEBAR\
$GRAY-$CYAN-$LIGHT_CYAN(\
$CYAN\u$GRAY@$CYAN\h\
$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
$CYAN\#$GRAY/$CYAN$GRAD1\
$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
$CYAN\$(date +%H%M)$GRAY/$CYAN\$(date +%d-%b-%y)\
$LIGHT_CYAN)$CYAN-$GRAY-\
$LIGHT_GRAY\n\
$GRAY-$CYAN-$LIGHT_CYAN(\
$CYAN\$$GRAY:$CYAN\w\
$LIGHT_CYAN)$CYAN-$GRAY-$LIGHT_GRAY " 
PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
}

function prompt_command {

TERMWIDTH=${COLUMNS}

#   Calculate the width of the prompt:

hostnam=$(echo -n $HOSTNAME | sed -e "s/[\.].*//")
#   "whoami" and "pwd" include a trailing newline
usernam=$(whoami)
let usersize=$(echo -n $usernam | wc -c | tr -d " ")
newPWD="${PWD}"
let pwdsize=$(echo -n ${newPWD} | wc -c | tr -d " ")
#   Add all the accessories below ...
let promptsize=$(echo -n "--(${usernam}@${hostnam})---(${PWD})--" \
                 | wc -c | tr -d " ")
let fillsize=${TERMWIDTH}-${promptsize}
fill=""
while [ "$fillsize" -gt "0" ] 
do 
   fill="${fill}-"
   let fillsize=${fillsize}-1
done

if [ "$fillsize" -lt "0" ]
then
   let cut=3-${fillsize}
   newPWD="...$(echo -n $PWD | sed -e "s/\(^.\{$cut\}\)\(.*\)/\2/")"
fi
}



PROMPT_COMMAND=prompt_command

function termwide {

local GRAY="\[\033[1;30m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local WHITE="\[\033[1;37m\]"
local NO_COLOUR="\[\033[0m\]"
local CYAN="\[\033[0;36m\]"
local LIGHT_CYAN="\[\033[1;36m\]"
local NO_COLOR="\[\033[0m\]"
local MAGENTA="\[\033[1;35m\]"

local LIGHT_BLUE="\[\033[1;34m\]"
local YELLOW="\[\033[1;33m\]"

case $TERM in
    xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        TITLEBAR=""
        ;;
esac

PS1="$TITLEBAR\
$LIGHT_GRAY-$LIGHT_GRAY-(\
$MAGENTA\${usernam}$CYAN@$LIGHT_CYAN\${hostnam}\
${LIGHT_CYAN})-${LIGHT_GRAY}-\${fill}${LIGHT_GRAY}-\n\
$MAGENTA\${newPWD}\
$YELLOW (\$(date +%H:%M))\
$LIGHT_GRAY \$${LIGHT_GRAY} "

PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "

}

termwide

export SVN_EDITOR="mate"
##
# Your previous /Users/matthewkirk/.profile file was backed up as /Users/matthewkirk/.profile.macports-saved_2009-10-29_at_09:28:18
##

# MacPorts Installer addition on 2009-10-29_at_09:28:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/mattk/.profile file was backed up as /Users/mattk/.profile.macports-saved_2010-01-26_at_08:50:31
##

# MacPorts Installer addition on 2010-01-26_at_08:50:31: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

