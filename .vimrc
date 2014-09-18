
filetype off 
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

syntax on  
filetyp on
filetype plugin indent on


"设置代码折叠
set foldmethod=indent
set foldlevel=99

"设置窗口移动快捷键
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"设置TaskList快捷键
map <leader>td <Plug>TaskList

"设置GundoToggle快捷键
map <leader>g :GundoToggle<CR>


let g:pyflakes_use_quickfix = 0

let g:pep8_map='<leader>8'

"设置代码补全
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"


"设置pydoc预览
set completeopt=menuone,longest,preview

"开启文件浏览器
map <leader>n :NERDTreeToggle<CR>

"设置代码跳转
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"设置模糊搜索
nmap <leader>a <Esc>:Ack!



set autoread      "当文件在外部修改之后，自动重新读入
set cursorline    "为光标所在行加下划线
set hls           "检索时高连显示匹配项

set number  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set expandtab  


"设置状态栏
set laststatus=2
let g:Powerline_symbols='unicode'

"taglist
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Auto_Open=1                "在启动VIM后，自动打开taglist窗口
let Tlist_File_Fold_Auto_Close=1     "只展开当前文件的tags
