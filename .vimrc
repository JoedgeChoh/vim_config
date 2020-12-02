"pathogon 插件管理包
execute pathogen#infect()

"语法和缩进
set nocompatible 
filetype on "文件类型侦测
syntax enable "开启语法高亮功能
syntax on  "允许用定制语法高亮配色方案替换默认方案
set hlsearch
filetype plugin indent on

"显示设置
set laststatus=2 "总是显示状态栏
set ruler "显示光标位置
set number "显示行号


"tab相关设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"颜色方案
set t_Co=256
colorscheme molokai_modified

"version > 740 open colorcolumn
if v:version > 700
    set colorcolumn=120
endif

""鼠标所在行高亮
"set cuarsorline
"hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white

"编辑设置
set expandtab "扩展制表符号为空格
set tabstop=2 "制表符占空格数
set softtabstop=2 "将连续数量的空格视为一个制表符
set shiftwidth=2 "自动缩进所使用的空白数
set textwidth=79 "编辑器每行字符数
set autoindent "打开自动缩进
set wildmenu "vim命令自动补全

"airline字符编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
set termencoding=utf-8                                                      
set langmenu=zh_CN.UTF-8                                                    
set laststatus=2
language message zh_CN.UTF-8                                                

""taglist设置

let Tlist_Auto_Open = 0          " 打开vim时，自动打开Taglist
let Tlist_Show_One_File=1        " 只显示当前文件的taglist
let Tlist_Exit_OnlyWindow = 1    " 当只剩下taglist窗口时，自动退出vim
"let Tlist_Use_Right_Window = 1  " taglist窗口的位置
""let Tlist_WinHeight = 100       " taglist窗口的高度
let Tlist_WinWidth = 20          " taglist窗口的宽度
noremap <C-F8> :Tlist<CR>        " 打开aglist窗口的快捷键


"语法检查设置
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
let g:syntastic_check_on_open=1
let g:syntastic_loc_list_height = 5
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1
"让syntastic支持C++11
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler_options = '-std=c++11'
"设置pyflakes为默认的python语法检查工具
let g:syntastic_python_checkers = ['pyflakes']
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"lubanr-commenter插件设置，主要是公司名称，作者名称等信息
let g:CompanyName = "weicahi.com"
let g:AuthorName = "zhuhe"
let g:AuthorEmail = "zhuhe@weichai.com"



