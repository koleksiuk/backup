if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" CtrlP OS-X Menu remapping
if janus#is_plugin_enabled('ctrlp') && has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif

set ruler
set number
call pathogen#infect()

set background=dark
colorscheme solarized

set nobackup
set noswapfile

set pastetoggle=<F2>

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

" Turn off search highlight 
nnoremap <CR> :noh<CR><CR>
