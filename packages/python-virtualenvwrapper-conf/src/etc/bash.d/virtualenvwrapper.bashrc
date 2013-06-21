
if [ `id -u` != 0 -a -f /usr/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=~/.virtualenvs
  source /usr/bin/virtualenvwrapper.sh
fi
