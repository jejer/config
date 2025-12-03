" ============================================================================
" General UI & Appearance
" ============================================================================
syntax on                     " Enable syntax highlighting
colorscheme elflord           " Set a good default colorscheme (try desert, elflord, slate)
set number                    " Show line numbers
"set relativenumber            " Show relative numbers for easier jumping
set cursorline                " Highlight the current line
set ruler                     " Always show cursor position in the status line
set showcmd                   " Show incomplete commands
set laststatus=2              " Always display the status line
set termguicolors             " Enable 24-bit RGB color in TUI; requires compatible terminal

" ============================================================================
" Editing Behavior
" ============================================================================
" --- Tabs & Indentation ---
set tabstop=4                 " Number of visual spaces per tab
set softtabstop=4             " Number of spaces for editing operations
set shiftwidth=4              " Number of spaces for auto-indentation
set expandtab                 " Use spaces instead of tabs
set autoindent                " Copy indent from current line when starting a new line
set smartindent               " Be smart about indentation

" --- Line Wrapping & Display ---
set wrap                      " Wrap long lines
set linebreak                 " Wrap lines at convenient points (don't break words)
set textwidth=80              " Hard-wrap lines at 80 characters when typing
"set colorcolumn=+1            " Highlight the column after textwidth

" --- Autocompletion ---
set wildmenu                  " Display a command-line completion menu
set completeopt=menuone,noselect " Configure completion menu behavior

" ============================================================================
" Search Behavior
" ============================================================================
set hlsearch                  " Highlight all search matches
set incsearch                 " Show search matches incrementally as you type
set ignorecase                " Ignore case when searching
set smartcase                 " ...unless the search pattern contains an uppercase letter

" ============================================================================
" Usability & File Handling
" ============================================================================
"set mouse=a                   " Enable mouse support in all modes
set scrolloff=8               " Keep 8 lines of context around the cursor
set hidden                    " Allow switching buffers without saving
set history=1000              " Increase the command history size

" --- Tame backup and swap files ---
set nobackup                  " Do not create backup files
set nowritebackup             " Do not create backup files during writes
set noswapfile                " Do not create swap files (disables recovery)

" ============================================================================
" Key Mappings for Quality of Life
" ============================================================================
" --- Leader Key ---
" The leader key is a custom prefix for your own shortcuts.
" Using Space is ergonomic and easy to press.
let mapleader = " "

" --- Practical Shortcuts ---
" Quickly save a file
nnoremap <leader>w :w<CR>
" Quickly quit
nnoremap <leader>q :q<CR>

" Toggle search highlighting on/off
nnoremap <leader><space> :set hlsearch!<CR>

" --- Window Navigation ---
" Move between splits using Ctrl + hjkl, which is more intuitive
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- Resize splits ---
nnoremap <C-Up>    :resize +2<CR>
nnoremap <C-Down>  :resize -2<CR>
nnoremap <C-Left>  :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" ============================================================================
" Filetype-Specific Settings
" ============================================================================
" Enable filetype detection and loading of filetype-specific settings
filetype plugin indent on

" --- Example Customizations ---
" For Makefiles, use real tabs, not spaces
autocmd FileType make setlocal noexpandtab shiftwidth=8 tabstop=8

" For Python, stick to PEP 8 (4 spaces)
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4

" For Markdown, disable automatic line wrapping
autocmd FileType markdown setlocal textwidth=0

" For return to last edit position when opening files
autocmd BufReadPost * silent! normal! g`"zv
