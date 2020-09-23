source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/floaterm.vim

call plug#begin('~/.local/share/nvim/plugged')


Plug 'ncm2/ncm2'

" install framework API that jedi-neovim uses
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'scrooloose/nerdtree', { 'do': ':UpdateRemotePlugins' }
  Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
  Plug 'justinmk/vim-sneak'
  Plug 'voldikss/vim-floaterm'
  Plug 'takac/vim-hardtime'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'

Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

let mapleader = " "

let g:deoplete#enable_at_startup = 1
let g:hardtime_default_on = 1


"------------------------palenight-----------------------
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

let g:palenight_terminal_italics=1

"------------------------end palenight-----------------------

let g:mkdp_echo_preview_url = 1

let g:python3_host_prog = '/home/sorozco0612/Programs/anaconda3/bin/python3.7'


" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
noremap <leader>n :NERDTreeToggle<cr>
noremap <leader>t :FloatermToggle<cr>
noremap <leader>m :MarkdownPreview<cr>

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:tnoremap <Esc> <C-\><C-n>
