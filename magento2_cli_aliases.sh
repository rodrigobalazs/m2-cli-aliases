export PROJECT="/home/user/m2project";
alias ws='cd $PROJECT; warden shell -c '

# reindexing
alias fre="ws 'bin/magento indexer:reindex'"

# DI compile
alias fco="ws 'bin/magento setup:di:compile'"

# runs a composer install & setup:upgrade
alias c="ws 'composer install'"
alias fsup="c; ws 'bin/magento setup:upgrade'"

# some aliases to list,create and update a given magento Admin user (using N98-magerun for M2)
alias adminl="ws 'n98-magerun admin:user:list'"
alias adminc="ws 'bin/magento admin:user:create'"
alias adminu="ws 'n98-magerun admin:user:change-password'"

# start/stop Warden & tail nginx log entries ..
alias wstart='sudo service apache2 stop; sudo service mysql stop; sudo service elasticsearch stop; cd $PROJECT; warden env start'
alias wstop='cd $PROJECT; warden env stop'
alias log='cd $PROJECT; warden env logs --tail 0 -f nginx'

# grep over /vendor folder, excluding testing Classes and some specific 'file types'.. usage: gv 'stringToSearch'
export EXCLUDE_FILE_TYPES="--exclude="*.map" --exclude="*.patch" --exclude="*.wsdl" --exclude="*.md" --exclude="*.pdf"";
alias gv='function _gv(){ grep -i -F -e "$1" $PROJECT/vendor -R $EXCLUDE_FILE_TYPES | grep -i -v "test"; };_gv'