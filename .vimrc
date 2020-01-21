"ee http://www.ocaml.info/vimrc

:set fileencodings=utf-8,cp1251
:set background=dark

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
" filetype indent on

" force 256 colors in console
"set t_Co=256

" Extended matching with %
runtime macros/matchit.vim

"-------------------------
" Ð‘Ð°Ð·Ð¾Ð²Ñ‹Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸
"-------------------------

" Ð’ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ Ð½ÐµÑÐ¾Ð²Ð¼ÐµÑÑ‚Ð¸Ð¼Ð¾ÑÑ‚ÑŒ Ð½Ð°ÑÑ‚Ñ€Ð¾ÐµÐº Ñ Vi (Ð¸Ð±Ð¾ Vi Ð½Ð°Ð¼ Ð¸ Ð½Ðµ Ð¿Ð¾Ð½Ð°Ð´Ð¾Ð±Ð¸Ñ‚ÑÑ).
set nocompatible

" ÐŸÐ¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ ÐºÑƒÑ€ÑÐ¾Ñ€Ð° Ð²ÑÑ‘ Ð²Ñ€ÐµÐ¼Ñ.
set ruler  

" ÐŸÐ¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ Ð½ÐµÐ·Ð°Ð²ÐµÑ€ÑˆÑ‘Ð½Ð½Ñ‹Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ‹ Ð² ÑÑ‚Ð°Ñ‚ÑƒÑÐ±Ð°Ñ€Ðµ
set showcmd  

" Ð’ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ Ð½ÑƒÐ¼ÐµÑ€Ð°Ñ†Ð¸ÑŽ ÑÑ‚Ñ€Ð¾Ðº
set nu

" Ð¤Ð¾Ð»Ð´Ð¸Ð½Ð³ Ð¿Ð¾ Ð¾Ñ‚ÑÑƒÐ¿Ð°Ð¼
"set foldmethod=indent

" ÐŸÐ¾Ð¸ÑÐº Ð¿Ð¾ Ð½Ð°Ð±Ð¾Ñ€Ñƒ Ñ‚ÐµÐºÑÑ‚Ð° (Ð¾Ñ‡ÐµÐ½ÑŒ Ð¿Ð¾Ð»ÐµÐ·Ð½Ð°Ñ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ñ)
set incsearch

" ÐžÑ‚ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ Ð¿Ð¾Ð´ÑÑ‚Ð²ÐµÑ‚ÐºÑƒ Ð½Ð°Ð¹Ð´ÐµÐ½Ð½Ñ‹Ñ… Ð²Ð°Ñ€Ð¸Ð°Ð½Ñ‚Ð¾Ð², Ð¸ Ñ‚Ð°Ðº Ð²ÑÑ‘ Ð²Ð¸Ð´Ð½Ð¾.
set nohlsearch

" Ð¢ÐµÐ¿ÐµÑ€ÑŒ Ð½ÐµÑ‚ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¿ÐµÑ€ÐµÐ´Ð²Ð¸Ð³Ð°Ñ‚ÑŒ ÐºÑƒÑ€ÑÐ¾Ñ€ Ðº ÐºÑ€Ð°ÑŽ ÑÐºÑ€Ð°Ð½Ð°, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾Ð´Ð½ÑÑ‚ÑŒÑÑ Ð² Ñ€ÐµÐ¶Ð¸Ð¼Ðµ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ
"set scrolljump=7

" Ð¢ÐµÐ¿ÐµÑ€ÑŒ Ð½ÐµÑ‚ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¿ÐµÑ€ÐµÐ´Ð²Ð¸Ð³Ð°Ñ‚ÑŒ ÐºÑƒÑ€ÑÐ¾Ñ€ Ðº ÐºÑ€Ð°ÑŽ ÑÐºÑ€Ð°Ð½Ð°, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¾Ð¿ÑƒÑÑ‚Ð¸Ñ‚ÑŒÑÑ Ð² Ñ€ÐµÐ¶Ð¸Ð¼Ðµ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ
set scrolloff=3

" set textwidth=100

" Ð’Ñ‹ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ Ð½Ð°Ð´Ð¾ÐµÐ´Ð»Ð¸Ð²Ñ‹Ð¹ "Ð·Ð²Ð¾Ð½Ð¾Ðº"
set visualbell
set t_vb=   

" ÐŸÐ¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ° Ð¼Ñ‹ÑˆÐ¸
set mouse=a
set mousemodel=popup

" ÐšÐ¾Ð´Ð¸Ñ€Ð¾Ð²ÐºÐ° Ñ‚ÐµÐºÑÑ‚Ð° Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ
set termencoding=utf-8

" ÐÐµ Ð²Ñ‹Ð³Ñ€ÑƒÐ¶Ð°Ñ‚ÑŒ Ð±ÑƒÑ„ÐµÑ€, ÐºÐ¾Ð³Ð´Ð° Ð¿ÐµÑ€ÐµÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ÑÑ Ð½Ð° Ð´Ñ€ÑƒÐ³Ð¾Ð¹
" Ð­Ñ‚Ð¾ Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÐµÑ‚ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ñ„Ð°Ð¹Ð»Ð¾Ð² Ð² Ð¾Ð´Ð¸Ð½ Ð¸ Ñ‚Ð¾Ñ‚ Ð¶Ðµ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ Ð±ÐµÐ· Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚Ð¸ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¸Ñ ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ñ€Ð°Ð·
" ÐºÐ¾Ð³Ð´Ð° Ð¿ÐµÑ€ÐµÐºÐ»ÑŽÑ‡Ð°ÐµÑˆÑŒÑÑ Ð¼ÐµÐ¶Ð´Ñƒ Ð½Ð¸Ð¼Ð¸
set hidden

" Ð¡ÐºÑ€Ñ‹Ñ‚ÑŒ Ð¿Ð°Ð½ÐµÐ»ÑŒ Ð² gui Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð±Ð¾ Ð¾Ð½Ð° Ð½Ðµ Ð½ÑƒÐ¶Ð½Ð°
set guioptions-=T

" Ð¡Ð´ÐµÐ»Ð°Ñ‚ÑŒ ÑÑ‚Ñ€Ð¾ÐºÑƒ ÐºÐ¾Ð¼Ð°Ð½Ð´ Ð²Ñ‹ÑÐ¾Ñ‚Ð¾Ð¹ Ð² Ð¾Ð´Ð½Ñƒ ÑÑ‚Ñ€Ð¾ÐºÑƒ
"set ch=1

" Ð¡ÐºÑ€Ñ‹Ð²Ð°Ñ‚ÑŒ ÑƒÐºÐ°Ð·Ð°Ñ‚ÐµÐ»ÑŒ Ð¼Ñ‹ÑˆÐ¸, ÐºÐ¾Ð³Ð´Ð° Ð¿ÐµÑ‡Ð°Ñ‚Ð°ÐµÐ¼
set mousehide

" Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð°Ð²Ñ‚Ð¾Ð¾Ñ‚ÑÑ‚ÑƒÐ¿Ñ‹
set autoindent

" Automatically write buffer before special actions
set autowrite

" Automatically read buffer (useful for doing ":!svn ci" when svn:keywords are substituted"
set autoread

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" ÐŸÑ€ÐµÐ¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¢Ð°Ð±Ð° Ð² Ð¿Ñ€Ð¾Ð±ÐµÐ»Ñ‹
set expandtab

" Ð Ð°Ð·Ð¼ÐµÑ€ Ñ‚Ð°Ð±ÑƒÐ»ÑÑ†Ð¸Ð¸ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ ÑÑ‚Ñ€Ð¾ÐºÐ¸ ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ñ
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
"set laststatus=2

" Ð’ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ "ÑƒÐ¼Ð½Ñ‹Ðµ" Ð¾Ñ‚ÑÐ¿ÑƒÐ¿Ñ‹ ( Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€, Ð°Ð²Ñ‚Ð¾Ð¾Ñ‚ÑÑ‚ÑƒÐ¿ Ð¿Ð¾ÑÐ»Ðµ {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" ÐžÐ¿Ñ†Ð¸Ð¸ ÑÐµÑÑÑÐ¸Ð¹
set sessionoptions=curdir,buffers,tabpages

" Expand history
set history=1000

"-------------------------
" Ð“Ð¾Ñ€ÑÑ‡Ð¸Ðµ ÐºÐ»Ð°Ð²Ð¸ÑˆÑ‹
"-------------------------

" ÐŸÑ€Ð¾Ð±ÐµÐ» Ð² Ð½Ð¾Ñ€Ð¼Ð°Ð»ÑŒÐ½Ð¾Ð¼ Ñ€ÐµÐ¶Ð¸Ð¼Ðµ Ð¿ÐµÑ€ÐµÐ»Ð¸ÑÑ‚Ñ‹Ð²Ð°ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹
nmap <Space> <PageDown>

" CTRL-F Ð´Ð»Ñ omni completion
imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste Ð² "Ð³Ð»Ð¾Ð±Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÐºÐ»Ð¸Ð¿Ð±Ð¾Ñ€Ð´"
" vmap <C-C> "+yi
" imap <C-V> <esc>"+gPi

" Ð—Ð°ÑÑ‚Ð°Ð²Ð»ÑÐµÐ¼ shift-insert Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ ÐºÐ°Ðº Ð² Xterm
map <S-Insert> <MiddleMouse>

" C-y - ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ñ‚ÐµÐºÑƒÑ‰ÐµÐ¹ ÑÑ‚Ñ€Ð¾ÐºÐ¸
nmap <C-y> dd
imap <C-y> <esc>ddi

" C-d - Ð´ÑƒÐ±Ð»Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ‚ÐµÐºÑƒÑ‰ÐµÐ¹ ÑÑ‚Ñ€Ð¾ÐºÐ¸
imap <C-d> <esc>yypi

" ÐŸÐ¾Ð¸ÑÐº Ð¸ Ð·Ð°Ð¼ÐµÐ½Ð° ÑÐ»Ð¾Ð²Ð° Ð¿Ð¾Ð´ ÐºÑƒÑ€ÑÐ¾Ñ€Ð¾Ð¼
nmap <C-l> :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - Ð±Ñ‹ÑÑ‚Ñ€Ð¾Ðµ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¸Ðµ
"nmap <F2> :w<cr>
"vmap <F2> <esc>:w<cr>i
"imap <F2> <esc>:w<cr>i
set pastetoggle=<F2>

" F3 - Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð¾ÑˆÐ¸Ð±Ð¾Ðº
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F4 - Ð±Ñ‹ÑÑ‚Ñ€Ñ‹Ð¹ Ð²Ñ‹Ñ…Ð¾Ð´
map <F4> :q<cr>
vmap <F4> <esc>:q<cr>
imap <F4> <esc>:q<cr>

" F5 - Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ ÑÐ¿Ð¸ÑÐºÐ° Ð±ÑƒÑ„ÐµÑ€Ð¾Ð²
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰Ð¸Ð¹ Ð±ÑƒÑ„ÐµÑ€
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ Ð±ÑƒÑ„ÐµÑ€
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - ÑÐ¿Ð¸ÑÐ¾Ðº Ð·Ð°ÐºÐ»Ð°Ð´Ð¾Ðº
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - "make" ÐºÐ¾Ð¼Ð°Ð½Ð´Ð°
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F10 - Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¾ÐºÐ½Ð¾ Project
map <F10> <Plug>ToggleProject<cr>
vmap <F10> <esc><Plug>ToggleProject<cr>
imap <F10> <esc><Plug>ToggleProject<cr>

" F12 - Format a paragraph
map <F12> gqap
vmap <F12> <esc>gqap<cr>i
imap <F12> <esc>gqap<cr>i

" < & > - Ð´ÐµÐ»Ð°ÐµÐ¼ Ð¾Ñ‚ÑÑ‚ÑƒÐ¿Ñ‹ Ð´Ð»Ñ Ð±Ð»Ð¾ÐºÐ¾Ð²
vmap < <gv
vmap > >gv

" Ð’Ñ‹ÐºÐ»ÑŽÑ‡Ð°ÐµÐ¼ Ð½ÐµÐ½Ð°Ð²Ð¸ÑÑ‚Ð½Ñ‹Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼ Ð·Ð°Ð¼ÐµÐ½Ñ‹
imap >Ins> <Esc>i

" ÐœÐµÐ½ÑŽ Ð²Ñ‹Ð±Ð¾Ñ€Ð° ÐºÐ¾Ð´Ð¸Ñ€Ð¾Ð²ÐºÐ¸ Ñ‚ÐµÐºÑÑ‚Ð° (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wildmode=list:longest

"set wcm=<Tab> 
"menu Encoding.koi8-r :e ++enc=koi8-r<CR>
"menu Encoding.windows-1251 :e ++enc=cp1251<CR>
"menu Encoding.cp866 :e ++enc=cp866<CR>
"menu Encoding.utf-8 :e ++enc=utf8 <CR>

" Ð ÐµÐ´ÐºÐ¾ ÐºÐ¾Ð³Ð´Ð° Ð½Ð°Ð´Ð¾ [ Ð±ÐµÐ· Ð¿Ð°Ñ€Ñ‹ =)
" imap [ []<LEFT>
" ÐÐ½Ð°Ð»Ð¾Ð³Ð¸Ñ‡Ð½Ð¾ Ð¸ Ð´Ð»Ñ {
imap {<CR> {<CR>}<Esc>O

" Ð¡-q - Ð²Ñ‹Ñ…Ð¾Ð´ Ð¸Ð· Vim 
map <C-Q> <Esc>:qa<cr>


" ÐÐ²Ñ‚Ð¾Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð¸Ðµ ÑÐ»Ð¾Ð² Ð¿Ð¾ tab =)
function InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

" Ð¡Ð»Ð¾Ð²Ð° Ð¾Ñ‚ÐºÑƒÐ´Ð° Ð±ÑƒÐ´ÐµÐ¼ Ð·Ð°Ð²ÐµÑ€ÑˆÐ°Ñ‚ÑŒ
set complete=""
" Ð˜Ð· Ñ‚ÐµÐºÑƒÑ‰ÐµÐ³Ð¾ Ð±ÑƒÑ„ÐµÑ€Ð°
set complete+=.
" Ð˜Ð· ÑÐ»Ð¾Ð²Ð°Ñ€Ñ
set complete+=k
" Ð˜Ð· Ð´Ñ€ÑƒÐ³Ð¸Ñ… Ð¾Ñ‚ÐºÑ€Ñ‹Ñ‚Ñ‹Ñ… Ð±ÑƒÑ„ÐµÑ€Ð¾Ð²
set complete+=b
" Ð¸Ð· Ñ‚ÐµÐ³Ð¾Ð² 
set complete+=t

au BufRead,BufNewFile *.f            set filetype=forth
au BufRead,BufNewFile *.F            set filetype=forth
au BufRead,BufNewFile *.spf          set filetype=forth
au BufRead,BufNewFile *.md           set filetype=mkd noexpandtab tw=100
au BufRead,BufNewFile *.wml          set textwidth=100

" highlight trailing spaces
au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\s\+$', -1)

" ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð´Ð»Ñ SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

" ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð´Ð»Ñ Tlist (Ð¿Ð¾ÐºÐ°Ð·Ð²Ð°Ñ‚ÑŒ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ‚ÐµÐºÑƒÑ‰Ð¸Ð¹ Ñ„Ð°Ð¹Ð» Ð² Ð¾ÐºÐ½Ðµ Ð½Ð°Ð²Ð¸Ð³Ð°Ñ†Ð¸Ð¸ Ð¿Ð¾  ÐºÐ¾Ð´Ñƒ)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

au BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
au BufReadPost *.doc silent %!antiword "%"

au BufWinLeave * mkview
au BufWinEnter * silent loadview

" For 'view' mode
if &readonly == 1
" ÑƒÐ±Ð¸Ñ€Ð°ÐµÐ¼ Ð½Ð¾Ð¼ÐµÑ€Ð° ÑÑ‚Ñ€Ð¾Ðº
set nonumber
" Ð½Ðµ ÑÐ²Ð¾Ñ€Ð°Ñ‡Ð¸Ð²Ð°Ñ‚ÑŒ Ð±Ð»Ð¾ÐºÐ¸ Ñ‚ÐµÐºÑÑ‚Ð°
set nofoldenable
" Ð´ÐµÐ»Ð°ÐµÐ¼ Ð¾Ñ‚ÑÑ‚ÑƒÐ¿ ÑÐ»ÐµÐ²Ð° Ð´Ð»Ñ Ð±Ð¾Ð»ÐµÐµ ÑƒÐ´Ð¾Ð±Ð½Ð¾Ð³Ð¾ Ñ‡Ñ‚ÐµÐ½Ð¸Ñ Ñ‚ÐµÐºÑÑ‚Ð°
" set foldcolumn=10
" Ð±Ñ‹ÑÑ‚Ñ€Ñ‹Ð¹ Ð²Ñ‹Ñ…Ð¾Ð´
" nmap <F10> :qa<cr>
" Ð¿ÐµÑ€ÐµÐ¼Ð¾Ñ‚ÐºÐ° Ð¿Ð¾ ÐŸÑ€Ð¾Ð±ÐµÐ»Ñƒ
nmap <Space> <PageDown>
endif

:set clipboard=unnamed,exclude:cons\\\|linux

" xterm16
let xterm16_colormap = 'allblue'
let xterm16_brightness = 'high'
let xterm16bg_Normal = 'none'
" colo xterm16

" set copy buffer
set viminfo='1000

" colo ibmedit
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
