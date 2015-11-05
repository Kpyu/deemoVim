" ================= Plugin Manager =========================
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







"============基础插件库==============
"============基础插件库==============
"============基础插件库==============
"============基础插件库==============


"============界面美化类插件库==============
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'










" ---- Plugin List Complete ----
call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plugin Setup End =========================

