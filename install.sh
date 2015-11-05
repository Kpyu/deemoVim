#
# --- deemo Vim Install Shell ---

# Shell for Install deemo Vim config
# Require Git and Auto Install Vundle

printf "\033[33mChecking Start...\033[0m\n"

printf "\033[36mChecking Git install...\033[0m\n"


printf "\033[33mChecking Dir\033[0m\n"
if [ ! -d "$HOME/.vim" ]; then
	echo "Make ALL with $HOME Directory PATH"

  printf "\n"
	echo " [- .vim"
	echo "   |- bundle  [ -- 插件管理 -- ]"
	echo "   |- undo    [ -- Generator Undo file -- ]"
	echo "   |- tags    [ -- Generator Tag file -- ]"
	echo "   |- session [ -- Session directory -- ]"
	echo " -] "
	printf "\n"

  mkdir $HOME/.vim
  mkdir $HOME/.vim/bundle
  mkdir $HOME/.vim/undo
  mkdir $HOME/.vim/tags
  mkdir $HOME/.vim/session
fi

if [ ! -d "$HOME/.vim/bundle" ]; then
	echo "Make dir -- bundle"
	mkdir $HOME/.vim/bundle
fi

if [ ! -d "$HOME/.vim/undo" ]; then
	echo "Make dir -- [ undo ]"
	mkdir $HOME/.vim/undo
fi

if [ ! -d "$HOME/.vim/tags" ]; then
	echo "Make dir -- [ tags ]"
	mkdir $HOME/.vim/tags
fi

if [ ! -d "$HOME/.vim/session" ]; then
	echo "Make dir -- [ session ]"
	mkdir $HOME/.vim/session
fi


if [ ! -d "$HOME/.vim/session" ]; then
  echo "Make dir -- [ session ]"
	mkdir $HOME/.vim/session
fi
#检查Vundle 安装
printf "\033[33mChecking Vundle Exist?\033[0m\n"
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Clone Vundle Plugin..."
	git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
fi

printf "\033[33mChecking Completed!\033[0m\n"


#创建个人vim配置目录
#
cp -rf deemo $HOME

#cp -f .vimrc $HOME/
#cp -f .nvimrc $HOME/
# if [ ! -f "$HOME/.tmux.conf" ]; then
# 	cp -f .tmux.conf $HOME/
# fi
