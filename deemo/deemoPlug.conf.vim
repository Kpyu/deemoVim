"==========================各种插件配置========================
set rtp+=~/.fzf

"=========Ailine 配置=========
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'compatible'
"let g:airline_theme = 'badwolf'
"let g:ariline_theme = 'base16'








"=========TagBar 配置 ========
" Just configure and [make] ctags file

let g:tagbar_ctags_bin = "/usr/bin/ctags"
let g:tagbar_iconchars = ['+', '-']

" for coffeeScript

let g:tagbar_type_coffee = {
			\ 'ctagstype' : 'coffee',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 'm:methods',
			\ 'f:functions',
			\ 'v:variables',
			\ 'f:fields',
			\ ]
			\ }
let g:tagbar_type_css = {
			\ 'ctagstype' : 'Css',
			\ 'kinds'     : [
			\ 'c:classes',
			\ 's:selectors',
			\ 'i:identities'
			\ ]
			\ }


	" Syntastic Config
	set statusline+=%#f1#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_error_symbol = 'x'
	let g:syntastic_warning_symbol = '!'
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list            = 1
	let g:syntastic_check_on_open            = 1
	let g:syntastic_check_on_wq              = 0

	" set Syntastic Cheacker engine
	" example JavaScript use JSHint [ NodeJS ]
	let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
	let g:syntastic_javascript_checkers = ['jshint']
	let g:syntastic_java_checkers       = ['java', 'jsp']
	let g:syntastic_c_checkers          = ['c', 'h']
	let g:syntastic_cpp_checkers        = ['cpp']





"=========Emmet配置 ==========
" change <Tab> config , if use [YouCompleteMe]
let g:use_emmet_expandabb_key ='<S-Tab>'
let g:use_emmet_settings = {
			\ 'php'     : {
			\ 'extends' : 'html',
			\ 'filtes' : 'c',
			\ },
			\ 'xml'     : {
			\ 'extends' : 'html',
			\ },
			\ 'haml'    : {
			\ 'extends' : 'html',
			\ },
			\}


"============ YouCompleteMe 配置===============
" Linux vim && NeoVim Using YouCompleteMe
"let g:deoplete#enable_at_startup=1
let g:ycm_auto_trigger = 1
let g:ycm_confirm_extra_conf = 0
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>  "force recomile with syntastic"

" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'

"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_min_num_of_chars_for_completion = 9999
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_cache_omnifunc = 1
"let g:ycm_max_diagnostics_to_display=16
"let g:ycm_disable_for_files_larger_than_kb = 50000
"let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>']
"let g:ycm_filetype_blacklist = {
"			\ 'tagbar' : 1,
"			\ 'qf' : 1,
"			\ 'notes' : 1,
"			\ 'markdown' : 1,
"			\ 'unite' : 1,
"			\ 'text' : 1,
"			\ 'vimwiki' : 1,
"			\ 'pandoc' : 1,
"			\ 'infolog' : 1,
"			\ 'mail' : 1,
"			\ 'mundo': 1,
"			\ 'fzf': 1,
"			\ 'ctrlp' : 1
"			\}
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>




" =============Multip Cursor============
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'







" ================DevIcons Config===========
" ColorFul NERDTree
let g:NERDTreeRespectWildIgnore=1

let g:NERDTreeDirArrows=0
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1
