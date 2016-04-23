" ========================= KeyFire Setting Start =========================

" -------------- Tooling Function Binding ------------------

" Lookup HighLight Syntax Define
function! <SID>SynStack()
	echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
	let spccol = repeat(' ', a:cols)
	let result = substitute(a:indent, spccol, '\t', 'g')
	let result = substitute(result, ' \+\ze\t', '', 'g')
	if a:what == 1
		let result = substitute(result, '\t', spccol, 'g')
	endif
	return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
	let savepos = getpos('.')
	let cols = empty(a:cols) ? &tabstop : a:cols
	execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
	call histdel('search', -1)
	call setpos('.', savepos)
endfunction

" Space2Tab
" Tab2Space
" RetabIndent
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'ag'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" ==================== Tooling Function Ending =============





nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TableModeToggle<CR>
nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>
nnoremap <F5> :TagbarToggle<CR>
nnoremap <F6> :SyntasticToggleMode <CR>
nnoremap <F7> :GundoToggle<CR>
nnoremap <F8> mzgg=G`z
nnoremap <F9> ggVG:RetabIndent<CR>


" Normal Key Map
nnoremap U :redo<CR>
nnoremap Q :q!<CR>
nnoremap W :w!<CR>

" Window VertSplit switcher
nnoremap <leader>hh <C-w>h
nnoremap <leader>jj <C-w>j
nnoremap <leader>kk <C-w>k
nnoremap <leader>ll <C-w>l
