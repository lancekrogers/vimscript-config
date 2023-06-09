" BEGIN VIMSCRIPT CONFIG 

" If you want to start window resize mode by `Ctrl+T`
let g:winresizer_start_key = '<C-w>'

" If you want to cancel and quit window resize mode by `z` (keycode 122)
let g:winresizer_keycode_cancel = 122

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-l': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

"  Original Ag command bound to  AgJS aka ag jump search
if executable('ag') 
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

command -nargs=+ -complete=file -bar AgJS silent! grep! <args>|cwindow|redraw!



tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>


nmap <silent> <right> :cnext<cr>
nmap <silent> <left> :cprev<cr>


let g:gitgutter_grep = 'ag'
nmap <silent> .<RIGHT> :GitGutterNextHunk<CR>
nmap <silent> .<LEFT> :GitGutterPrevHunk<CR>

" ctrl-p to activate telescope
nnoremap <c-p> <cmd>Telescope find_files<cr>  

" Toggle line number modes
nnoremap <silent><F7> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR> 


au BufNewFile,BufRead *.py,*.vy
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set colorcolumn=80 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.ts,*.js,*.html,*.css,*.jsx,*.sql,*.sol
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=99 |
    \ set colorcolumn=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.sh,*.vimrc
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" END VIMSCRIPT CONFIG 
