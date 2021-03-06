set nocompatible
set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
" runtime bundle/vim-pathogen/autoload/pathogen.vim
call vundle#begin()

" ---- Launch Config -----------------
" call pathogen#infect()
" call pathogen#runtime_append_all_bundles()

Plugin 'VundleVim/Vundle.vim'

" ----- Making Vim look good ------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'sjl/badwolf'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'joshdick/onedark.vim'


" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'powerline/powerline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Shougo/neocomplete'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
Plugin 'jez/vim-superman'

" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
"Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
Plugin 'goatslacker/mango.vim'
" Make tmux look like vim-airline (read README for extra instructions)
"Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use

Plugin 'ekalinin/Dockerfile.vim'
" Plugin 'nikvdp/ejs-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'leafgarland/typescript-vim'
Plugin 'dense-analysis/ale'
" Plugin 'mxw/vim-jsx'
" Plugin 'isRuslan/vim-es6'
Plugin 'sheerun/vim-polyglot'

" Js-beautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
" ----- Working with GoLang -----------------------------------------
Plugin 'fatih/vim-go'

call vundle#end()

" filetype plugin indent on
filetype indent on


" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set cursorline
set incsearch
set hlsearch
set wildmenu
set lazyredraw
set showmatch

set foldenable  " enable folding
set foldlevelstart=10
set foldnestmax=10  " 10 nested folds max
set foldmethod=indent "fold based on indent level

noremap <space> za

" leader = \
" turn off search highlight press '\ space'
nnoremap <leader><space> :nohlsearch<CR>
" Super undo command
nnoremap <leader>u :GundoToggle<CR>
" The Silver Searcher Command
nnoremap <leader>a :Ag

" --------- ctrlp settings --------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip        " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe     " Windows

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -hidden -g ""'
let g:ctrlp_user_command = 'find %s -type f'  " MacOS/Linux


syntax on
syntax enable

set mouse=a

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
colorscheme onedark
" colorscheme molokai
" colorscheme badwolf
let g:molokai_original=1
let g:rehash256=1
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:style=Book*/

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ----- JSX Plugin Config -------------------------
let g:jsx_ext_required = 0

" ----- vim emmet Config -------------------------
let g:user_emmet_loader_key='<Tab>'
let g:user_emmet_settings = {
\   'javascript.jsx' : {
\     'extends': 'jsx'
\   }
\}

" ---- vim ALE Config ---------------------------
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1
" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
let g:ale_sign_error = '✘'   " Less aggressive than the default '>>'
let g:ale_sign_warning = '▲'
let g:ale_lint_on_enter = 0   " Less distracting when opening a new file
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>


" ------ /ale --------
nmap <F6> <Plugin>(ale_fix)

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- rking/ag.vim -----
let g:ag_working_path_mode="r"

" ----- scrooloose/syntastic settings -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_always_populate_loc_list = 1
let g:synstastic_auto_loc_list = 1
let syntastic_check_on_open = 1
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_exec = 'tidy5'

augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- jez/vim-superman settings -----
" better man page support
noremap K :SuperMan <cword><CR>

"--------- auto complete HTML tags -----------
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

"------vim better whitespace settings --------
highlight ExtraWhitespace ctermbg=033

"------create language specific setting for certain filetype -----------------
augroup configgroup
  autocmd!
  autocmd VimEnter * highlight clear SignColumn
  autocmd BufEnter *.zsh-theme setlocal filetype=zsh
  autocmd BufEnter Makefile setlocal noexpandtab
  autocmd BufEnter *.sh setlocal tabstop=2
  autocmd BufEnter *.sh setlocal shiftwidth=2
  autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
