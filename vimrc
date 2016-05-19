"vundle 配置 {"{{{
    set rtp+=~/.vim/bundle/vundle
    call vundle#rc()
"}
" ======= 插件安装 ======= 
Bundle 'vim-scripts/AutoComplPop'
Bundle 'mattn/emmet-vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'easymotion/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'marijnh/tern_for_vim'
"Bundle 'Valloric/YouCompleteMe'
"}}}


"==========================   基本设置  ========================= "{{{
"设置内部编码
set encoding=utf-8
"设置当前编辑的文件编码
set fileencoding=utf-8
"打开支持的文件编码
set fileencodings=utf8,utf8-bom,gbk,gb2312,big5
set fileformat=unix
"显示匹配括号
set showmatch
"开启文件类型侦测
filetype on
"根据侦测的不同类型加载对应插件
filetype plugin on
"搜索时大小写不敏感
set ignorecase
"关闭兼容模式
set nocompatible
"vim自身命令行模式智能补全
set wildmenu
"显示行号
set number
"高亮显示搜索结果
set hlsearch
"开启实时搜索功能
set incsearch
"高亮显示当前行/列
set cursorline
"set cursorcolumn
"hi cursorline cterm=NONE ctermbg=234 ctermfg=NONE 
"显示光标所在位置
set ruler
"总是显示状态栏
set laststatus=2
"禁止代码折行
"set nowrap
set mouse=a
"代码匹配
set showmatch
"文件在vim之外修改后自动读入
set autoread
"帮助文件设置为中文
set helplang=cn
"开启256色支持
set t_Co=256
"记住上次编辑的位置
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
"退格键
set backspace=indent,eol,start
"}}}


" ==========================   配色方案  ========================= "{{{
"开启语法高亮功能
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on
"配色方案
"set background=dark
colorscheme Tomorrow-Night-Bright
"highlight Visual term=bold ctermfg=68 ctermbg=190 gui=bold guifg=#f8f8f2 guibg=#468410
"highlight Comment ctermfg=green ctermbg=1 guifg=green
"}}}


" ==========================   代码缩进  ========================= "{{{
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim把连续的空格视为一个制表符
set softtabstop=4
set autoindent
set smartindent
"}}}


" ==========================  代码折叠  ========================= "{{{
"基于缩进或语法进行代码折叠
"set foldmethod=indent
"set foldmethod=syntax
set foldmethod=marker
"启动vim时关闭折叠代码
"set nofoldenable
"}}}

" ==========================  插件管理  ========================= 
" 定义快捷键前缀
let mapleader=';'

if has('gui_running')"{{{
    set transparency=15
    "colorscheme murphy
    "colorscheme dracula
    set guifont=YaHei\ Consolas\ Hybrid:h14
    highlight Cursorline guibg=grey15
    "禁止显示菜单栏和工具条
    set guioptions-=T
    set guioptions-=m
    set lines=49
    set columns=140
    set langmenu=zh_cn
endif"}}}

"powerline{"{{{
    set laststatus=2
    "set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 12
    "set guifont=Consolas\ for\ Powerline\ FixedD:h9
    set guifont=Consolas\ for\ Powerline\ FixedD
    let g:Powerline_symbols = 'fancy'
    set fillchars+=stl:\ ,stlnc:\
"}"}}}

"NERDTree配置{"{{{
    "打开文件时自动开启NERDTree
    autocmd VimEnter * NERDTree
    wincmd w
    autocmd VimEnter * wincmd w
    "设置NERDTree子窗口宽度
    let NERDTreeWinSize=26
    "设置NERDTree子窗口位置
    let NERDTreeWinPos="left"
    
    "显示隐藏文件
    let NERDTreeShowHidden=0
    "NERDTree 子窗口中不显示冗余帮助信息
    let NERDTreeMinimalUI=1
    "删除文件时自动删除文件对应 buffer
    let NERDTreeAutoDeleteBuffer=1
    let NERDChristmasTree=1
    "快捷键
    map <F3> :NERDTreeToggle<CR>
    "自动关闭
    "autocmd bufenter * if ( winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == 'primary' ) | q | endif
"}"}}}

"indent_guides配置{"{{{
    " 随vim启动
    let g:indent_guides_enable_on_vim_startup=1    
    " 从第二层开始可视化显示缩进
    let g:indet_guides_start_level=2
    "色块宽度
    let g:indent_guides_guide_size=1
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=lightgrey
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
    let g:indent_guides_auto_colors=0
"}"}}}

" tagbar 配置 {"{{{
    "autocmd VimEnter * Tagbar
    " 设置 tagbar 子窗口的位置出现在主编辑区的左边 
    " let tagbar_left= 0
    let tagbar_right = 1
    " 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
    map <F4> :TagbarToggle<CR> 
    " nnoremap <Leader>tl :TagbarToggle<CR> 
    " 设置标签子窗口的宽度 
    let tagbar_width= 28
    " tagbar 子窗口中不显示冗余帮助信息 
    let g:tagbar_compact=1
" }"}}}

" MiniBuffExplorer配置{"{{{
    autocmd VimEnter * MBEOpen
    " 显示/隐藏 MiniBufExplorer窗口
    "map <Leader>bl :MBEToggle<CR>
    map <F5> :MBEToggle<CR>
    " buffer切换快捷键
    map <Leader>n :MBEbn<CR>
    map <Leader>p :MBEbp<CR>
    map <Leader>x :MBEbw<CR>
" }"}}}

" AutoComplPop 配置 {"{{{
    autocmd FileType php setlocal dict+=~/.vim/bundle/AutoComplPop/php_funclist.txt
    if !exists('g:AutoComplPop_Behavior')
        let g:AutoComplPop_Behavior = {}
        let g:AutoComplPop_Behavior['php'] = []
        call add(g:AutoComplPop_Behavior['php'],{'command':'','pattern':printf('(->|::|$)k{%d,}$', 0),'repeat' :0})
    endif
" }"}}}

"easymontion 配置 {"{{{
    let g:EasyMotion_use_smartsign_us=1
"}"}}}

"neocomplcache配置 {"{{{
    let g:neocomplcache_enable_at_startup=1
    let g:netcomplcache_enable_auto_select=1
"}"}}}

"map <C-m> :<Esc>:!python %<CR>
