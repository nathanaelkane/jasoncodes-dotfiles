" Remap leader to ',' which is much easier than '\'
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" Preserve cursor position when exiting insert mode
imap <Esc> <Esc><Right>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTree<CR>:wincmd p<CR>:NERDTreeFind<CR>

" Trim & save
map <Leader>sd :FixWhitespace<CR>:up<CR>
map <Leader>sw :FixWhitespace<CR>:up<CR>:CommandW<CR>
map ZZ :up<CR>:CommandW<CR>
map <silent><Leader>r :checktime<CR>:wall<CR>
map <Leader>Q :qall<CR>

" normalize whitespace
nmap <silent><Leader>ss :S/\(\S\)\s\+/\1 /g<CR>:S/\s*$//<CR>
vmap <silent><Leader>ss :S/\(\S\)\s\+/\1 /g<CR>gv:S/\s*$//<CR>

" Buffer navigation
map <Leader>, <C-^>
map <Leader>t :CommandT<CR>
map <Leader>T :call CommandTWithFlush()<CR>
map <Leader>w :CommandW<CR>
nmap <silent><Leader>q :call CloseWindow()<CR>
map <Leader>l :CommandTBuffer<CR>

" Ack
map <Leader>f :Ack!<Space>

" Cycle between windows with Tab and Shift-Tab
map <silent><Tab> :wincmd w<CR>
map <silent><S-Tab> :wincmd W<CR>

" Clear search
map <silent><Leader>/ :nohls<CR>

" Toggle word wrap
map <Leader>W :set wrap!<CR>

" Toggle spell checking
map <Leader>S :set spell!<CR>

" Toggle invisibles
noremap <Leader>i :set list!<CR>

" Convert between spaces and tabs
map <Leader>I :set list<CR>:FixWhitespace<CR>:ToggleTabs<CR>

" Page down with space
map <Space> <PageDown>

" Highlight word at cursor without changing position
nnoremap <leader>h *<C-O>

" Bookmarking
map <C-Space> :ToggleBookmark<CR>
map <C-Up>    :PreviousBookmark<CR>
map <C-Down>  :NextBookmark<CR>

" Movement & wrapped long lines
" This solves the problem that pressing down jumps your cursor 'over' the current line to the next line
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

nnoremap = v=

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove annoying F1 help
inoremap <F1> <Esc>
nnoremap <F1> <Esc>
vnoremap <F1> <Esc>

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Align Maps (mapping overrides)
map <Leader>am <Plug>AM_w=

" Rooter (mapping overrides)
map <Leader>R <Plug>RooterChangeToRootDirectory

" TComment
let g:tcommentMapLeaderOp1 = '<Leader>c'

" Align selected Cucumber table with <Bar>
vmap <silent><Bar> :Align <Bar><CR>gv:S/\s\+$//e<CR>gv:S/^\s//e<CR>gv<Esc>

" Save and restore window and cursor position
" This prevents the default <Leader>swp from conflicting with <Leader>sw
map <Leader>p <Plug>SaveWinPosn
map <Leader>P <Plug>RestoreWinPosn

" Restore Surround's default `cs` key binding
nmap cs <Plug>Csurround
