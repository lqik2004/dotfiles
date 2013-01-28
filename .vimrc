" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ai                  " auto indenting
set history=400         " keep 100 lines of history
set ruler               " show the cursor position
set number				" show line num
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
syntax on               " syntax highlighting
syntax enable
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype on
filetype indent on 
" setting tab spacing
set expandtab
set shiftwidth=4
set tabstop=4
"complete option
set completeopt=longest,menu
" Chinese Version Help Files
set helplang=cn

let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"Conf for Plugins {{  
"Pathogen{
call pathogen#infect()
call pathogen#helptags()
"}
"
"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set t_Co=256
 let g:Powerline_symbols = 'unicode'
"}
"}}

" Solarized stuff{
"If you are using the solarized color scheme with your terminal the 16 ANSI colors will be set to the solarized colors, in which case you want to set let g:solarized_termcolors=16. If you use 256 it will be close, but the background will be grey instead of the deep sea blue.
 let g:solarized_termcolors = 256
 let g:solarized_visibility = "high"
 let g:solarized_contrast = "high"
 let g:solarized_termtrans = 1
 set background=dark
 colorscheme solarized
"}


"taglist{
    let Tlist_Show_One_File = 1     "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1   "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1 "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='/usr/local/bin/ctags' "设置ctags命令的位置
    nnoremap <leader>tl : Tlist<CR>  "设置关闭和打开taglist窗口的快捷键
"}
