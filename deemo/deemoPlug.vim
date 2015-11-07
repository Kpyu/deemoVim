" ================= Plugin Manager =========================
"
" Vundle Plugin Manager
filetype off
" Different Path between Windows and Linux
if(has('win32'))
	set rtp+=$VIM/vimfiles/bundle/Vundle.vim
	call vundle#rc('$VIM/vimfiles/bundle')
else
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
endif
"=============== Plugins Beginning =======================

"============基础插件库==============
Plugin 'gmarik/Vundle.vim' "插件管理器 Vundle
Plugin 'google/vim-maktaba'
Plugin 'thinca/vim-quickrun'
Plugin 'L9'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'romainl/vim-qf'
Plugin 'mattn/webapi-vim'
Plugin 'bruno-/vim-alt-mappings'


"============文件管理类插件库==============

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'tsukkee/unite-tag'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'danro/rename.vim'
Plugin 'junegunn/fzf'







"============vim增强插件库==============
Plugin 'Shougo/neoinclude.vim'
Plugin 'Shougo/neco-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Shougo/neco-syntax'
Plugin 'honza/vim-snippets'
Plugin 'terryma/vim-multiple-cursors' "==vim多光标输入插件
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
Plugin 'ebfe/vim-racer'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'  "html/css 快速生成
Plugin 'mattn/livestyle-vim'










"============基础插件库==============
"============基础插件库==============
"============基础插件库==============


"============界面美化类插件库==============
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'zenorocha/dracula-theme'










" ---- Plugin List Complete ----
call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plugin Setup End =========================
