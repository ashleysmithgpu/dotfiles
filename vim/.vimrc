
" Use swap semicolon and colon so I don't have to press shift as much
noremap ; :
noremap : ;

" Show line numbers
set number

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Ignore case when searching...
set ignorecase

" except when we use capitals
set smartcase

" Hilight all search matches
set hlsearch

" Makefiles require \t characters
autocmd FileType make setlocal noexpandtab

" Makefiles require \t characters
autocmd FileType haskell setlocal expandtab

" Set utf8 as the default
set encoding=utf8

" Enable syntax highlighting
syntax enable

" Show trailing whitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Highlight trailing whitespace, spaces before a tab and tabs not at the start of a line
":match ExtraWhitespace /\s\+$\| \+\ze\t/
:match ExtraWhitespace /\s\+$/

" Command to check out file from perforce for editing and re open it
function! Checkout()
	execute "!p4 edit " . bufname("%")
endfunction

" Map F2 to checkout
nnoremap <F2> :call Checkout()<CR>

" Automatically "hide" buffers when switching with :bn :bp :edit so you can switch without having to write changes
set hidden

let g:airline_powerline_fonts=1

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Frequently used keys
nnoremap <C-h> :bp<cr>
nnoremap <C-l> :bn<cr>

" Indent after return
set autoindent
set smartindent

let g:netrw_liststyle=3

" Relative line numbers
set relativenumber

" Disable F1
:nmap <F1> <nop>

" Change search highight colour to something visible
hi Search ctermfg=black ctermbg=white

" Quick save session
nnoremap <F5> :mksession! ~/.vim_session

" Quick load session
nnoremap <F6> :source ~/.vim_session

" Enable c++ syntax highlighting on shader files
au BufReadPost *.vsh set syntax=c
au BufReadPost *.fsh set syntax=c
au BufReadPost *.ray set syntax=c
au BufReadPost *.frag set syntax=c
au BufReadPost *.vert set syntax=c
au BufReadPost *.frame set syntax=c
au BufReadPost *.comp set syntax=c

" Persistant undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=100000
set undoreload=100000

" Rust file types and syntax highlighting
au BufRead,BufNewFile *.rs set filetype=rust

" Bug in neovim: No way to warn on file changes
" this will reload the file automatically without asking
au FocusGained * :checktime

