function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

alias gg 'ghq get'
alias gi 'git init'
alias ga 'git add'
alias gc 'git commit -m'
alias gp 'git push'
alias gs 'git status'
alias gb 'git branch'
alias gco 'git checkout'
alias gr 'git remote'
alias gra 'git remote add origin'

alias hl 'heroku login'
alias hp 'git push heroku master'
alias ho 'heroku open'

alias win 'tmux split-window -d -p 30'

set GHQ_SELECTOR peco

function setup
  git clone 
  mv vimrc/.vimrc ~
  mv fish/config.fish ~/.config/fish/
  mv tmux/.tmux.conf
end
