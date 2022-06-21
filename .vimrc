" vim: fdm=marker foldenable sw=2 ts=2
" .vimrc by Adrian Estevez
" "zo" to open folds, "zc" to close, "zn" to disable.

au!
let mapleader=","

" {{{ Basic Settings

set encoding=utf8
set number relativenumber

syntax on

" Search into subfolders
set path+=**
colorscheme simple-dark

" Show menu with matches when tab complete
set wildmenu

" :find to search
" :ls to check open files
" :b to change to open file

" Commands for autocompletion on insert mode
" ^x^n for JUST this file
" ^x^f for filenames
" ^x^o for soyntax
" ^x^] for tags only
" ^n for anything specified by the 'complete' option

set ignorecase	" case insensitive searching
set smartcase 	" case-sensitive when capital letter

set showmatch 	" show matching brackets
set noshowmode

set laststatus=2

set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab

" Allow for folding on all files
set fdm=marker 
set foldenable 

" }}}

" {{{ Commands

" Add c skeleton
au Filetype c,h nnoremap <leader>s :-1read .templates/c/skeleton.c<CR>

" Add bash skeleton
au Filetype sh nnoremap <leader>s :-1read .templates/bash/skeleton.sh<CR>

" Add html skeleton
au FileType html nnoremap <leader>l :-1read $HOME/templates/html/list.html<CR>

" Add html and css comments
au FileType css nnoremap <leader>c I/*<ESC>A*/<ESC>
au FileType css nnoremap <leader>C 0f/d2l$F*d2l
au FileType html nnoremap <leader>c O<!-- <++> --><ESC>0

" Create closing tag
nnoremap tt F<yf>Pa <++> <ESC>f<a/<ESC>3F<
nnoremap tr F<yf>$pbi/<ESC>

" Go to next changepoint
nnoremap <leader><leader> /<++><CR>c4l
nnoremap <leader>. /<++><CR>Nc4l


" }}}

" {{{ Auto Commands
" XML
au Filetype json,python,tf,xml,yaml,yml setlocal tabstop=2 shiftwidth=2 expandtab

" C
au Filetype c,h setlocal colorcolumn=110 
au Filetype c,h highlight ColorColumn ctermbg=darkgrey
au Filetype c,h nnoremap gcc :w<CR>:!clear && gcc -Wall -pedantic -o %:r.out % <CR>
au Filetype c,h nnoremap <F3> :w<CR>:!clear && gcc -Wall -pedantic -o %:r.out % && echo "Success" && rm %:r.out <CR>
au Filetype c,h nnoremap <F5> :w<CR>:!clear && gcc -Wall -pedantic -o %:r.out % && ./%:r.out <CR>

" Bash
au FileType sh let g:sh_fold_enabled=5
au FileType sh let g:is_bash=1

" GROFF
au BufNewFile,BufRead *.ms set ft=ms
au Filetype ms setlocal colorcolumn=110 
au Filetype ms highlight ColorColumn ctermbg=darkgrey
au Filetype ms nnoremap <F3> :w<CR>:!clear && preconv % \| tbl \| groff -ms -dpaper -Tpdf > %:r.pdf <CR><CR>
au Filetype ms nnoremap <F5> :w<CR>:!clear && preconv % \| tbl \| groff -ms -dpaper -Tpdf > %:r.pdf && zathura %:r.pdf & <CR><CR>

" HTML/CSS
au FileType html,css setlocal colorcolumn=110 sw=2 ts=2 omnifunc=csscomplete#CompleteCSS
au Filetype html,css highlight ColorColumn ctermbg=darkgrey


" }}}

" {{{ Others
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_hide=0        	" show hidden files
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Cursor Movement
" ^E	- window down
" ^Y	- window up
" ^F	- page down
" ^B	- page up
" H		- cursor to top
" M		- cursor to middle
" L		- cursor to bottom
" gg	- beginning of file
" G		- end of file

" Macros
" q{regiter}	- start recording
" q						- stop recording
" @{register} - execute

" Jump Around
" '.	- Jump to last line
" `.	- Jump to last exact spot
" ^O	- Retrace backwards
" ^I	- Retrace forward

" }}}
