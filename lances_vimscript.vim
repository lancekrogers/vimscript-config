" BEGIN VIMSCRIPT CONFIG 
"  Original Ag command bound to  AgJS aka ag jump search
if executable('ag') 
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

command -nargs=+ -complete=file -bar AgTEST silent! grep! <args>|cwindow|redraw!

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

" END VIMSCRIPT CONFIG 
