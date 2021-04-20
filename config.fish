function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

abbr -a gg git clone
abbr -a gi git init
abbr -a ga git add
abbr -a gc git commit -m
abbr -a gp git push
abbr -a gs git status
abbr -a gb git branch
abbr -a gco git checkout
abbr -a gr git remote
abbr -a gra git remote add origin
abbr -a gf git fetch
abbr -a gm git merge

eval (gh completion -s fish| source)

abbr -a hl heroku login
abbr -a hp git push heroku master
abbr -a ho heroku open
abbr -a ha heroku apps
abbr -a hd heroku destroy --app 
abbr -a hc heroku create  

abbr -a harada heroku git:clone -a haradakazunari 
abbr -a connai heroku git:clone -a connaiconnai 

abbr -a tl tmux ls
abbr -a tn tmux new -s
abbr -a ta tmux a -t 
abbr -a tk tmux kill-server

abbr -a react  npx create-react-app --template typescript  
function reactsetup
  /* npm install --save typescript @types/node @types/react @types/react-dom @types/jest */
  npm install --save @material-ui/core @material-ui/icons @material-ui/system
  npm install --save bootstrap react-bootstrap
  npm install --save node-sass
  npm install --save react-router-dom
end

function django
  python3 -m venv django
  source ./env/bin/activate.fish
  cd django
  pip3 install django
  django-admin startproject config
  cd config
end

  

abbr -a apache cd /Library/WebServer/Documents/
abbr -a win tmux split-window -d -p 30



set GHQ_SELECTOR peco

function setup
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
  fisher install jethrokuan/z && fisher install decors/fish-ghq && fisher install 0rax/fish-bd && fisher install fishpkg/fish-spin && fisher install oh-my-fish/plugin-balias && fisher install oh-my-fish/plugin-expand && fisher install oh-my-fish/plugin-peco && fisher install simnalamburt/shellder
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

function ide2
  tmux split-window -h
  tmux resize-pane -L 50 
  tmux split-window -h
  tmux select-pane -t 0
  tmux split-window -v
  tmux resize-pane -D 20 
  tmux select-pane -t 2
  tmux split-window -v
  tmux resize-pane -D 20 
  tmux select-pane -t 4
  tmux split-window -v
  tmux resize-pane -D 20 
  tmux select-pane -t 0
end

abbr host cd /Users/kazu/htdocs/
abbr content cd wp-content/themes/
abbr todo vim /Users/kazu/todo.md

