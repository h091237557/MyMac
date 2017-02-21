"设置vundle
set nocompatible              
filetype off                  

"設置leader鍵為『, 』
let mapleader = ','

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"set serach text  hightlight
set hlsearch 


"highlighting current line 
set cursorline
Plugin 'heavenshell/vim-jsdoc'
Plugin 'scrooloose/nerdtree'  "文件浏览
Plugin 'majutsushi/tagbar'    "代码符号
Plugin 'wesleyche/SrcExpl'    "类似sourceInsight的代码预览窗口
Plugin 'taglist.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
Plugin 'bling/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate' "引号配对补全
Plugin 'scrooloose/nerdcommenter' "快速注释
"[d] shift+v+方向键选中(默认当前行)
"    -> ,cc      加上注释
"    -> ,cu      解开注释
"    -> ,c<space> 加上/解开注释
"    -> ,cy      先复制再注解, p可以粘贴未注释前的代码

"Plugin 'SirVer/ultisnips'
Plugin 'flazz/vim-colorschemes'


"display indent levels in code 
Plugin 'nathanaelkane/vim-indent-guides'

"js檔格式排序"
"執行:Leaderff"
Plugin 'jsbeautify'

"執行:<c-y>, "
Plugin 'Emmet.vim'

"html排序"
Plugin 'bitfyre/vim-indent-html'
let g:html_indent_script1 = "inc" 
let g:html_indent_style1 = "inc" 
let g:html_indent_inctags = "html,body,head"

"typescript"
Plugin 'leafgarland/typescript-vim'

Plugin 'elzr/vim-json'

"根據.editconfig配制"
Plugin 'maksimr/vim-jsbeautify'

"程式碼檢查"
"let g:syntastic_debug=3 "If you need debug syntastic , open it
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['standard']
"let g:syntastic_javascript_standard_generic = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
highlight link SyntasticError ErrorMsg 
highlight link SyntasticErrorSign WarningMsg 
"---------------------------------------------------------------

"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1 
colorscheme Railscasts

" * Plugin: Indent guides
" " ------------------------------------
 let g:indent_guides_enable_on_vim_startup=1
 let g:indent_guides_start_level=2
 let g:indent_guides_auto_colors=0
 autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
 autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
 let g:indent_guides_color_change_percent = 30
 let g:indent_guides_guide_size = 1

filetype plugin on
set omnifunc=syntaxcomplete#Complete
"filetype plugin indent on     " required!
"vundle设置完毕

syntax on
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_left = 1
let NERDTreeWinPos='right'
let g:Srcexpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>"

let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
                 \ "_NERD_tree_"
                     \ ]


set tags=tags;/  "搜索上一级建立的tag

"Custom
set number

"Set Tab number is 2 space 
 set ts=2
"Set auto shift is 2 space
 set sw=2


" For Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled =1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

" set status line
set laststatus=2


"For Plugin 'Youcompleteme'
" YCM
"let g:ycm_extra_conf_globlist = ['~/.vim/bundle/YouCompleteMe/cpp/ycm/*','!~/*']
"let g:ycm_global_ycm_extra_conf =  '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"
"     " Syntastic
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}


"For Plugin ' tern_for_vim '
let g:tern_show_signature_in_pum = 1

"For Plugin 'UltiSnips'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

"快速鍵--------------------------------------------------------------
inoremap jj <ESC>
inoremap <c-o> <c-x><c-o>
"control+h进入左边的窗口
nmap <C-H> <C-W>h

"control+j进入下边的窗口
nmap <C-J> <C-W>j

"control+k进入上边的窗口
nmap <C-K> <C-W>k

"control+l进入右边的窗口
nmap <C-L> <C-W>l
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
"nmap <F4> :SrcExplToggle<CR>
nmap <F4> :call JsBeautify()<CR>

" " for html
 autocmd FileType html noremap <buffer> <c -f> :call HtmlBeautify()<cr>
" " for css or scss
 autocmd FileType css noremap <buffer> <c -f> :call CSSBeautify()<cr>
 autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>

 "caps lock + n  ===> auto complete word "

"快速鍵--------------------------------------------------------------


set term=screen-256color
"hi Normal ctermbg=none
set t_Co=256
set background=dark
color Tomorrow-Night
