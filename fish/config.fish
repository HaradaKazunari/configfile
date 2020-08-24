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
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
  fisher add jethrokuan/z && fisher add decors/fish-ghq && fisher add 0rax/fish-bd && fisher add fishpkg/fish-spin && fisher add oh-my-fish/plugin-balias && fisher add oh-my-fish/plugin-expand && fisher add oh-my-fish/plugin-peco && fisher add simnalamburt/shellder
end
