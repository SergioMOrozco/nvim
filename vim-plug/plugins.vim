" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    "Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    "" Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    "" Color Scheme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "" formatter for python since CoC sucks at it
    "Plug 'python/black'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    ""Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    """ makes sure fuzzy finder only check git repo
    ""Plug 'airblade/vim-rooter'

    """ for start screen
    Plug 'mhinz/vim-startify'

    """ Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb' " used for GRemove and GBrowse
    Plug 'junegunn/gv.vim'

    Plug 'justinmk/vim-sneak'

    "" makes searching with 'f' and 't' quicker
    Plug 'unblevable/quick-scope'

    Plug 'liuchengxu/vim-which-key'

    " Runtime debugging
    Plug 'puremourning/vimspector'

    "Syntax highlighting and code actions for c#
    Plug 'OmniSharp/omnisharp-vim'

    " Code Formatter
    Plug 'sbdchd/neoformat'

    " semantic highlighting for python
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter * 
  \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | q
  \| endif

