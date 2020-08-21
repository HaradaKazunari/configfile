function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

balias gg 'ghq get'
balias gi 'git init'
balias ga 'git add'
balias gc 'git commit -m'
balias gp 'git push'
balias gs 'git status'
balias gb 'git branch'
balias gco 'git checkout'
balias gr 'git remote'
balias gra 'git remote add origin'

balias hl 'heroku login'
balias hp 'git push heroku master'
balias ho 'heroku open'

balias win 'tmux split-window -d -p 30'

set GHQ_SELECTOR peco
