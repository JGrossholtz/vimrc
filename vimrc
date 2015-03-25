syntax on    "syntax highlighting
set hls      "highlight search
set autoindent "set identationafter cariage return
set mouse=a		"mouse usable in all modes 
set foldopen=all "able to open folder when clicking on them
set ts=4		"4 tab spaces

"open new windows on the reght and below the current one
set splitright
set splitbelow

filetype plugin on

map <F1> :tabnew<CR>
" map the plugin show function to 
map <F2> :tabprevious<CR>
map <F3> :tabnext<CR>
" open the .h associated file
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
map <F12> :execute "vimgrep /" . expand("<cword>") . "/j ../**/*.{[ch],cpp,mk} Makefile" <Bar> cw<CR>
" open the _def.h associated file
"map <F5> :e %:p:s,.def$,.X123X,:s,.c$,.def,:s,.X123X$,.c,<CR>
map <F5> :e %:p:s,.private.h$,.X123X,:s,.c$,.private.h,:s,.X123X$,.c,<CR>
" open the _def.h associated file
":map <F6> :e %:p:s,.def$,.X123X,:s,.c$,.def,:s,.X123X$,.c,<CR>
":map <F6> :e %:p:s,_mod.h$,.X123X,:s,.c$,_mod.h,:s,.X123X$,.c,<CR>
map <F6> :e %:p:s,.protected.h$,.X123X,:s,.c$,.protected.h,:s,.X123X$,.c,<CR>
nnoremap <F8> :%s#\<<c-r><c-w>\>#<c-r><c-w>#gc
map <F9> :set nowrap!<CR>
map <F10> :Dox<CR>

" ctags : back from definition
noremap  <C-d> <C-t>
" ctags : go to definition
noremap  <C-c> <C-]>
" ctags : back from def
noremap  <C-l>  :ts <C-R><C-W><CR>

" search without case
noremap  \ /\c

"autocomplete options
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

