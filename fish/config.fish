function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

abbr -a gg ghq get
abbr -a gi git init
abbr -a ga git add
abbr -a gc git commit -m
abbr -a gp git push
abbr -a gs git status
abbr -a gb git branch
abbr -a gco git checkout
abbr -a gr git remote
abbr -a gra git remote add origin

abbr -a hl heroku login
abbr -a hp git push heroku master
abbr -a ho heroku open

abbr -a win tmux split-window -d -p 30

set GHQ_SELECTOR peco

function setup
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
  fisher add jethrokuan/z && fisher add decors/fish-ghq && fisher add 0rax/fish-bd && fisher add fishpkg/fish-spin && fisher add oh-my-fish/plugin-balias && fisher add oh-my-fish/plugin-expand && fisher add oh-my-fish/plugin-peco && fisher add simnalamburt/shellder
end

function ide
  tmux split-window -h
  tmux resize-pane -L 55 
  tmux split-window -v
  tmux resize-pane -D 20 
  tmux split-window -h
  tmux select-pane -t 1
  tmux split-window -h
  tmux select-pane -t 3
  tmux resize-pane -R 20 
  tmux select-pane -t 4
end

