" courtesy of ygrek
" modified by zhelih
"
" see http://www.ocaml.info/vimrc

:set fileencodings=utf-8,cp1251
:set background=dark

" xterm16
let xterm16_colormap = 'allblue'
let xterm16_brightness = 'high'
let xterm16bg_Normal = 'none'
" colo xterm16
" colo ibmedit

let maplocalleader="\<space>"

call pathogen#infect()

" default C-C is a big mess up, C-S doesn't workd because terminal but who cares
let g:ftplugin_sql_omni_key       = '<C-S>'
let g:SuperTabDefaultCompletionType = "context"

" gx to open URLs in Firefox
let g:netrw_browsex_viewer= "firefox"

let ignore = '\v\~$'
let ignore .= '|\.(a|so|o|exe|dll|bak|orig|swp|cm.+|annot|byte|native)$'
let ignore .= '|(^|[/\\])(_o?build|elm-stuff|\.(hg|git|bzr))($|[/\\])'

"FuzzyFinder should ignore all files in .gitignore
if filereadable(".gitignore")
  for line in readfile(".gitignore")
    let line = substitute(line, '\.', '\\.', 'g')
    let line = substitute(line, '\~', '\\~', 'g')
    let line = substitute(line, '\*', '.*', 'g')
    let line = substitute(line, ' ', '', 'g')
    if strlen(line) > 0
      let ignore .= '|^' . line
    endif
  endfor
endif

function! FzyCommand(input, choice_command, vim_command)
  try
    let output = system(a:choice_command,a:input)
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  let output = substitute(output, '\n\+$', '', '')
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . escape(output,'/\')
  endif
endfunction

nnoremap <LocalLeader>e :call FzyCommand("", "rg . -L -l -g '' < /dev/null 2> /dev/null \| fzy", ":e ")<cr>
nnoremap <LocalLeader>i :call FzyCommand(join(getline(1, '$'), "\n"), "fzy", "/\\V")<cr>

" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": ["ocaml","rust","sh"] }
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_sh_checkers = ['shellcheck']
let g:elm_syntastic_show_warnings = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'minimalist'

" let g:indentLine_setConceal = 0
" let g:indentLine_concealcursor = 'vc'

set modelines=0
set nomodeline

set noshowmode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:racer_cmd = "/home/user/.cargo/bin/racer"

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if 0 == 1
  call dein#add('w0rp/ale')

  let g:ale_rust_rls_toolchain = '<version in Makefile>'
  let g:ale_completion_enabled = 1
  let g:ale_set_balloons = 1

  let g:ale_linters = {
        \ 'rust': ['rls'],
        \ 'ocaml': ['merlin'],
        \}

  autocmd FileType rust  nnoremap <buffer> <silent> <LocalLeader>t :ALEHover<CR>
  autocmd FileType rust  nnoremap <buffer> <silent> <LocalLeader>d :ALEGoToDefinition<CR>

  call dein#add('sbdchd/neoformat')
endif

" https://elliotekj.com/2016/11/22/setup-ctrlp-to-use-ripgrep-in-vim/
set wildignore+=*/.git/*,*.swp,*/_build/*

if executable('rg')
  " https://github.com/BurntSushi/ripgrep/issues/425
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  let g:ackprg = &grepprg
  "let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  "let g:ctrlp_use_caching = 0
  "let g:ctrlp_working_path_mode = 'ra'
  "let g:ctrlp_switch_buffer = 'et'
elseif executable('ag')
  set grepprg=ag\ --vimgrep
  let g:ackprg = &grepprg
  "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  "let g:ctrlp_use_caching = 0
endif

cnoreabbrev rg Ack
cnoreabbrev Rg Ack
cnoreabbrev ag Ack
cnoreabbrev Ag Ack

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature

" move forward to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

" move to {char}
"map  s <Plug>(easymotion-bd-f2)
"nmap s <Plug>(easymotion-overwin-f2)

nmap <LocalLeader>w <Plug>(easymotion-bd-w)

" Move to line
"map <LocalLeader>l <Plug>(easymotion-bd-jk)
"nmap <LocalLeader>l <Plug>(easymotion-overwin-line)

" JK motions: Line motions
map <LocalLeader>j <Plug>(easymotion-j)
map <LocalLeader>k <Plug>(easymotion-k)

map  <LocalLeader>f <Plug>(easymotion-sn)
omap <LocalLeader>f <Plug>(easymotion-tn)

cmap j <Down>
cmap k <Up>

" let g:gitgutter_sign_column_always = 1

" to update gitgutter signs faster
" set updatetime=500

" gitgutter show on save only
autocmd BufWritePost * GitGutter

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
" filetype indent on

" set omnifunc=syntaxcomplete#Complete

" force 256 colors in console
set t_Co=256
" do not clear terminal
" set t_ti=
" set t_te=

" Enable screen swapping {{{3
" which seems missing in the linux terminfo entry
" help xterm-screens for more info
"if &term ==? 'linux'
"    set t_ti=[?1049h
"    set t_te=[?1049l
"endif

" Extended matching with %
runtime macros/matchit.vim

"-------------------------
" Базовые настройки
"-------------------------

" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible

" Показывать положение курсора всё время.
 set ruler

" Показывать незавершённые команды в статусбаре
 set showcmd

" line numbers
set nu

" Фолдинг по отсупам
"set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Отключаем подстветку найденных вариантов, и так всё видно.
set nohlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
"set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=3

" set textwidth=100

" Выключаем надоедливый "звонок"
set visualbell
set t_vb=

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
"set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Automatically write buffer before special actions
set autowrite

" Automatically read buffer (useful for doing ":!svn ci" when svn:keywords are substituted"
set autoread

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set expandtab

" Размер табуляции по умолчанию
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Формат строки состояния
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
"set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

" Expand history
set history=1000

" set cursorline

"-------------------------
" Горячие клавишы
"-------------------------

" Пробел в нормальном режиме перелистывает страницы
" nmap <Space> <PageDown>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
" vmap <C-C> "+yi
" imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" Поиск и замена слова под курсором
nmap <C-K> :%s/\<<c-r>=expand("<cword>")<cr>\>/
"nmap <C-F> :FufFile **/<cr>
nmap <C-L> :FufLine<cr>
"nmap <C-B> :FufBuffer<cr>

" I found this map works for Ctrl-Space : 
"nnoremap <C-@> i
inoremap <C-@> <Esc>

nnoremap <LocalLeader>a :Ack<CR>
noremap <LocalLeader>u :w<CR>

let g:toggle_list_no_mappings = 1
nmap <script> <silent> <F3> :call ToggleQuickfixList()<CR>
nmap <script> <silent> <LocalLeader>q :call ToggleQuickfixList()<CR>
nmap <script> <silent> <LocalLeader>l :call ToggleLocationList()<CR>

map <LocalLeader>r :set nu!<CR>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

let HlUnderCursor=1
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
nnoremap <silent> <F8> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

function MakeAndShowError()
  make
"  if &filetype == "ocaml"
"    cla
"  else
"    cr
"  endif
endfunction

" F9 - "make" команда
map <F9> :call MakeAndShowError()<cr>
vmap <F9> <esc>:call MakeAndShowError()<cr>i
imap <F9> <esc>:call MakeAndShowError()<cr>i
nmap <LocalLeader>m :call MakeAndShowError()<cr>

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wildmode=list:longest

" Редко когда надо [ без пары =)
" imap [ []<LEFT>
" Аналогично и для {
" imap {<CR> {<CR>}<Esc>O

" Автозавершение слов по tab =)
function InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
endfunction
"imap <tab> <c-r>=InsertTabWrapper()<cr>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов
set complete+=t

au BufRead,BufNewFile *.f            set filetype=forth
au BufRead,BufNewFile *.F            set filetype=forth
au BufRead,BufNewFile *.spf          set filetype=forth
au BufRead,BufNewFile *.md           set filetype=mkd tw=140
au BufRead,BufNewFile *.brtx         set filetype=bracetax tw=140
au BufRead,BufNewFile *.wml          set textwidth=140
au BufRead,BufNewFile *.ml4,*.mlp    set filetype=ocaml

" set list listchars=tab:»·,trail:·

" highlight trailing spaces
au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)

" highlight line length limit
autocmd ColorScheme * highlight OverLength ctermbg=grey ctermfg=white
autocmd ColorScheme * match OverLength /\%141v/

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" :execute "helptags " . g:opamshare . "/merlin/vim/doc"


let g:merlin_split_method = 'never'

let g:merlin_textobject_grow   = 'm'
let g:merlin_textobject_shrink = 'M'

"nnoremap <LocalLeader>d :Locate<cr>

"au BufWinEnter * call matchadd('ErrorMsg', '\%>100v.\+', -1)

set completeopt-=preview
set completeopt+=longest
" set mps-=[:]

au BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
au BufReadPost *.doc silent %!antiword "%"

" For 'view' mode
if &readonly == 1
" убираем номера строк
set nonumber
" не сворачивать блоки текста
set nofoldenable
" делаем отступ слева для более удобного чтения текста
" set foldcolumn=10
" быстрый выход
" nmap <F10> :qa<cr>
" перемотка по Пробелу
nmap <Space> <PageDown>
endif

:set clipboard=unnamed,exclude:cons\|linux

" http://mikhailian.livejournal.com/2050.html

   map ё `
   map й q
   map ц w
   map у e
   map к r
   map е t
   map н y
   map г u
   map ш i
   map щ o
   map з p
   map х [
   map ъ ]

   map ф a
   map ы s
   map в d
   map а f
   map п g
   map р h
   map о j
   map л k
   map д l
   map ж ;
   map э '

   map я z
   map ч x
   map с c
   map м v
   map и b
   map т n
   map ь m
   map б ,
   map ю .

   map Ё ~
   map Й Q
   map Ц W
   map У E
   map К R
   map Е T
   map Н Y
   map Г U
   map Ш I
   map Щ O
   map З P
   map Х {
   map Ъ }

   map Ф A
   map Ы S
   map В D
   map А F
   map П G
   map Р H
   map О J
   map Л K
   map Д L
   map Ж :
   map Э "

   map Я Z
   map Ч X
   map С C
   map М V
   map И B
   map Т N
   map Ь M
   map Б <
   map Ю >

let g:es_library_path="/home/user/.vim/bundle/vim-elasticsearch/es_keyword.txt"

" To install Pathogen for VIM
" see https://github.com/tpope/vim-pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" Plugins I use:
" ack.vim
" neoformat
" supertab
" syntastic
" vim-bracketed-paste
" vim-easymotion
" vim-fugitive
" vim-gitgutter
" vim-ocaml
" vim-redact-pass
" vim-repeat
" vim-speeddating
" vim-surround
" vim-togglelist
" vim-unimpaired
" vim-sensible
"
" Example to install:
" cd ~/.vim/bundle && \
" git clone https://github.com/tpope/vim-sensible.git
