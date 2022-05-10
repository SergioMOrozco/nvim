":SLoad       load a session
":SSave[!]    save a session
":SDelete[!]  delete a session
":SClose      close a session

" Specify where to store sessions
let g:startify_session_dir = '~/.config/nvim/session'


" dont change working directory. This messes with vim rooter
let g:startify_change_to_dir = 0

" setup of startup page
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ ]

"Automatically update sessions
let g:startify_session_persistence = 1

"Get rid of empy buffer and quit
let g:startify_enable_special = 0



                                                                                                                    
 let g:startify_custom_header = [                                                                                                                   
       \ ' __   __     ______     ______     __   __   __     __    __   ', 
       \ '/\ "-.\ \   /\  ___\   /\  __ \   /\ \ / /  /\ \   /\ "-./  \  ', 
       \ '\ \ \-.  \  \ \  __\   \ \ \/\ \  \ \ \`/   \ \ \  \ \ \-./\ \ ', 
       \ ' \ \_\\"\_\  \ \_____\  \ \_____\  \ \__|    \ \_\  \ \_\ \ \_\', 
       \ '  \/_/ \/_/   \/_____/   \/_____/   \/_/      \/_/   \/_/  \/_/', 
       \]
                                                                
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
