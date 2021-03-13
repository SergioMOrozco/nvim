source$HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start_screen.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/which-key.vim

"source $HOME/.config/nvim/plug-config/sneak.vim

"source $HOME/.config/nvim/plug-config/floaterm.vim
"
"call plug#begin('~/.local/share/nvim/plugged')
"
"
"Plug 'ncm2/ncm2'
"
"" install framework API that jedi-neovim uses
"if has('nvim')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}	
"Plug 'francoiscabrol/ranger.vim'
"Plug 'rbgrouleff/bclose.vim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
"Plug 'justinmk/vim-sneak'
"Plug 'voldikss/vim-floaterm'
"Plug 'takac/vim-hardtime'
"else
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"endif
"
""Plug 'cjrh/vim-conda'
"" Plug 'drewtempelmeyer/palenight.vim'
"Plug 'dylanaraps/wal.vim'
"call plug#end()
"
"let g:hardtime_default_on = 1 
"
""pynvim is where neovim,pynvim, and jedi are installed so that I dont need to
""install them for every single new environment where i want to use neovim
"let g:python3_host_prog = '/home/sorozco0612/Programs/anaconda3/envs/pynvim/bin/python'
"
""------------------------palenight-----------------------
"" colorscheme palenight
"colorscheme wal
"let g:lightline = { 'colorscheme': 'palenight' }
"let g:airline_theme = "palenight"
"
"if (has("nvim"))
""For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif
"
"let g:palenight_terminal_italics=1
"
""------------------------end palenight-----------------------
"
"let g:mkdp_echo_preview_url = 1
"
"" Go to tab by number
"noremap <leader>1 1gt
"noremap <leader>2 2gt
"noremap <leader>3 3gt
"noremap <leader>4 4gt
"noremap <leader>5 5gt
"noremap <leader>6 6gt
"noremap <leader>7 7gt
"noremap <leader>8 8gt
"noremap <leader>9 9gt
"noremap <leader>0 :tablast<cr>
"noremap <leader>n :NERDTreeToggle<cr>
"noremap <leader>t :FloatermToggle<cr>
"noremap <leader>c :CondaChangeEnv<cr>
"noremap <leader>m :MarkdownPreview<cr>
"
"" Bind F5 to save file if modified and execute python script in a buffer.
"nnoremap <silent> <F5> :call SaveAndExecutePython()<CR>
"vnoremap <silent> <F5> :<C-u>call SaveAndExecutePython()<CR>
"
"function! SaveAndExecutePython()
"    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim
"
"    " save and reload current file
"    silent execute "update | edit"
"
"    " get file path of current file
"    let s:current_buffer_file_path = expand("%")
"
"    let s:output_buffer_name = "Python"
"    let s:output_buffer_filetype = "output"
"
"    " reuse existing buffer window if it exists otherwise create a new one
"    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
"        silent execute 'botright new ' . s:output_buffer_name
"        let s:buf_nr = bufnr('%')
"    elseif bufwinnr(s:buf_nr) == -1
"        silent execute 'botright new'
"        silent execute s:buf_nr . 'buffer'
"    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
"        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
"    endif
"
"    silent execute "setlocal filetype=" . s:output_buffer_filetype
"    setlocal bufhidden=delete
"    setlocal buftype=nofile
"    setlocal noswapfile
"    setlocal nobuflisted
"    setlocal winfixheight
"    setlocal cursorline " make it easy to distinguish
"    setlocal nonumber
"    setlocal norelativenumber
"    setlocal showbreak=""
"
"    " clear the buffer
"    setlocal noreadonly
"    setlocal modifiable
"    %delete _
"
"    " add the console output
"    silent execute ".!python " . shellescape(s:current_buffer_file_path, 1)
"
"    " resize window to content length
"    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
"    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
"    "       But if you close the output buffer then it returns to using the default size when its recreated
"    "execute 'resize' . line('$')
"
"    " make the buffer non modifiable
"    setlocal readonly
"    setlocal nomodifiable
"endfunction
"
"let g:conda_startup_wrn_suppress = 1
":set number relativenumber
