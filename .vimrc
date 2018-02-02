
"显示行号
set nu

"突出显示当前行(加下划线)
"set cursorline

"设置vim配色方案 配色文件位于/usr/share/vim/vim**/colors目录下
"(delek industry pablo slate blue desert	
"koehler peach puff torte 
"darkblue elflord morning 
"ron zellner default	
"evening murphy	shine)

colorscheme default

set bg=dark "设置背景色


"设定打开vim时的窗口位置和大小
winpos 500 50
set lines=50 columns=120     


"语法高亮
syntax on

"中文语言支持设置参数
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8　　
set encoding=utf-8

"浅色显示当前行
"autocmd InsertLeave * se nocul
"浅色高亮显示当前行
"autocmd InsertEnter * se cul



"没有保存或文件只读时弹出确认
set confirm

"右下角显示当前光标的位置
set ruler

"设置tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
set cindent
"智能缩进
set smartindent

"关闭折叠
set nofoldenable
"根据语法折叠
"set fdm=syntax
"根据缩进折叠
set fdm=indent
"手动折叠
"set fdm=manual

"显示输入的命令
"set showcmd


"--------------------------------快捷键设置------------------------------------
"键盘映射-ctrl+a 全选
map <C-a> ggVGY
map! <C-a> <Esc>ggVGY

" 窗口切换  
map [w <C-w>w
map ]w <C-w>w
map [h <C-w>h
map [l <C-w>l  
map [j <C-w>j  
map [k <C-w>k 


"打开目录树
map <F3> :NERDTreeToggle<CR>

"切换Buffer"
nmap [b :bn<CR>
nmap ]b :bp<CR>

"全部退出快捷键
map Q :qall<CR>
vmap Q :qall<CR
"强制全部退出快捷键
map Q! :qall!<CR>
vmap Q! :qall!<CR>
"退出当前窗口快捷键
map q :q<CR>

"---------------Airline快捷键----------------------------------
" 映射<leader>num到num buffer
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"---------------END-Airline快捷键----------------------------------

"-------------------------END-快捷键设置------------------------------------



"-----------------------Vundle配置(vim插件管理工具)-----------------------------------
set nocompatible              
filetype off                  " 必须关闭

" 设置Vundle的所在路径，初始化
set rtp+=~/.vim/bundle/Vundle.vim

"开始加载插件
call vundle#begin() 


" 管理插件
Plugin 'VundleVim/Vundle.vim'

"---------------------必备插件----------------------------
"树形目录插件
Bundle 'https://github.com/scrooloose/nerdtree.git'

"Vim启动界面插件
Bundle 'https://github.com/mhinz/vim-startify.git'

"标签美化插件
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'"airlin主题

"----------------------必备插件END----------------------

"-----可选插件(默认关闭，若安装请移除注释，打开vim执行PluginInstall命令)------

"注释插件
"Plugin 'scrooloose/nerdcommenter'

"查找插件
"Bundle 'https://github.com/kien/ctrlp.vim.git'

"自动补全插件YouCompleteMe
Bundle 'https://github.com/Valloric/YouCompleteMe.git'


"首尾符号替换
"Bundle 'https://github.com/tpope/vim-surround.git'


"图标插件
"Plugin 'ryanoasis/vim-devicons'

"----------------------可选插件END------------------------


call vundle#end()            " 加载插件结束(必须设置) 
filetype plugin indent on    " 必须设置

"-----------------------Vundle配置(vim插件管理工具)-----------------------------------


"启动vim时自动打开NERDTree树形目录
"au VimEnter * NERDTree

"-----------------Vim状态栏airline配置----------------------
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

 " 关闭状态显示空白符号计数
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
 " 设置consolas字体
 set guifont=Consolas\ for\ Powerline\ FixedD:h11
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'


" ----------------------------End---Vim状态栏airline配置------------------------------


"----------------YouCompleteMe 插件配置---------------------------------------------  
let g:ycm_global_ycm_extra_conf= '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_python_binary_path = '/usr/bin/python'  

" 自动补全配置  
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)  
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口  
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项  
"上下左右键的行为 会显示其他信息  
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"  
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"  
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"  
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"  
  
"--------------youcompleteme默认tab  s-tab 和自动补全冲突-----------------------  
"let g:ycm_key_list_select_completion=['<c-n>']  
let g:ycm_key_list_select_completion = ['<Down>']  
"let g:ycm_key_list_previous_completion=['<c-p>']  
let g:ycm_key_list_previous_completion = ['<Up>']  
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示  
  
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎  
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项  
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项  
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic  
"nnoremap <leader>lo :lopen<CR> "open locationlist  
"nnoremap <leader>lc :lclose<CR>    "close locationlist  
inoremap <leader><leader> <C-x><C-o>  
"在注释输入中也能补全  
let g:ycm_complete_in_comments = 1  
"在字符串输入中也能补全  
let g:ycm_complete_in_strings = 1  
"注释和字符串中的文字也会被收入补全  
let g:ycm_collect_identifiers_from_comments_and_strings = 0  
let g:clang_user_options='|| exit 0'  
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
"----------------End---YouCompleteMe 插件配置----------------------------------------  
