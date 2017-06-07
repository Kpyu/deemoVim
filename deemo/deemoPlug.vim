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
Plugin 'Shougo/vimproc.vim' , {'do' : 'make'}
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'tsukkee/unite-tag'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'danro/rename.vim'
Plugin 'junegunn/fzf'







"============vim增强插件库==============
"Plugin 'Shougo/neoinclude.vim'
"Plugin 'Shougo/neco-vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Shougo/neco-syntax'
Plugin 'honza/vim-snippets'
Plugin 'terryma/vim-multiple-cursors' "==vim多光标输入插件
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
Plugin 'ebfe/vim-racer'
Plugin 'mattn/emmet-vim'  "html/css 快速生成
Plugin 'mattn/livestyle-vim'













"============Geeks Plugin==============
Plugin 'Shougo/deoplete.nvim'
Plugin 'SirVer/ultisnips'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'
Plugin 'bruno-/vim-man'
Plugin 'dhruvasagar/vim-table-mode'




Plugin 'justinmk/vim-syntax-extra' "Extra C Flex Syntax
Plugin 'WolfgangMehner/c.vim'
Plugin 'Kris2k/A.vim'
Plugin 'othree/html5.vim'
"Plugin 'hdima/python-syntax'
Plugin 'kh3phr3n/python-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'chrisbra/csv.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-jp/vim-cpp'
Plugin 'rust-lang/rust.vim'
Plugin '13k/vim-nginx'
Plugin 'guns/xterm-color-table.vim'

Plugin 'godlygeek/tabular'
Plugin 't9md/vim-quickhl'
Plugin 'Chiel92/vim-autoformat'

"============语言类插件库==============
Plugin 'fatih/vim-go'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'

"============界面美化类插件库==============
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'zenorocha/dracula-theme'
Plugin 'crusoexia/vim-dream'
Plugin 'Lokaltog/distinguished-theme'
Plugin 'flazz/vim-colorschemes'
Plugin 'endel/vim-github-colorscheme'
Plugin 'FuDesign2008/randomColor.vim'










" ---- Plugin List Complete ----
call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plugin Setup End =========================
