if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export ARTIFACTORY_USER=bhushan.mohan
export JENV_ROOT=/usr/local/opt/jenv
if command -v jenv 1>/dev/null 2>&1; then
  eval "$(jenv init -)";
fi
