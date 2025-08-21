# Локаль
# set -x LANG ru_RU.UTF-8
# set -x LC_ALL ru_RU.UTF-8

# PATH
set -x PATH $HOME/bin $HOME/.local/bin /usr/local/bin $PATH
# делает следующее:
# Добавляет директории $HOME/bin, $HOME/.local/bin и /usr/local/bin в начало переменной окружения PATH.
# -x означает экспортировать переменную, чтобы она была доступна всем дочерним процессам (например, программам, которые вы запускаете из shell).
# $PATH в конце добавляет к новым путям уже существующие значения переменной PATH (чтобы не потерять системные пути).

# Цвета для ls
set -x LS_COLORS "rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:"

# Алиасы
alias ll='ls -lh --color=auto'
alias la='ls -lAh --color=auto'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'


# Автодополнение и подсветка (встроено)
# Для расширенного автодополнения можно установить https://github.com/jorgebucaran/fisher и плагины
