" ==================================================================================================
"                       =============== 作者 Winter Yuan ===========
" ==================================================================================================

" ==================================================================================================
"                       ================  基础设置  =================
" ==================================================================================================
set nocompatible
set backspace=indent,eol,start
" 设置python支持
"let g:python3_host_prog = 'C:/Users/23879/AppData/Local/Microsoft/WindowsApps/python3.exe'
set number  		" 显示行号
"set foldmethod=indent   "使用引导折叠
set relativenumber	" 显示相对行号  看着别扭
set incsearch       " 实时开启搜索高亮
set hlsearch		" 搜索结果高亮
set autoindent		" 自动缩进
set smartindent		" 智能缩进
set shiftwidth=4	" 设置自动缩进宽度为4
set smartcase           " 开启智能大小写查找
set encoding=utf-8      " Use UTF-8.
set showcmd             " Display incomplete commands.
set clipboard=unnamedplus " 开启系统剪切板
set cursorline          " 高亮当前行
set smartcase           " 设置智能大小写
syntax on
colorscheme gruvbox

" ============================================================================
"                    ============= 插件列表 =================
" ============================================================================
call plug#begin('D:/Global Config/nvim/plugged')

Plug 'preservim/nerdtree'       " 文件树
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'      " 括号颜色匹配
Plug 'jiangmiao/auto-pairs'     " 自动补全
Plug 'mhinz/vim-startify'       " 启动
Plug 'yggdroot/indentline'      " 缩进线
Plug 'morhetz/gruvbox'
" 自动代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 文件搜索
Plug 'kien/ctrlp.vim'
" 快速跳转
Plug 'easymotion/vim-easymotion'
" 快速注释
Plug 'tpope/vim-commentary'
" 调试器

call plug#end()

" ============================================================================
"                  ============== 插件设置 ===================
" ============================================================================
" nerdtree
nnoremap ff :NERDTreeFind<CR>
nnoremap tt :NERDTreeToggle <CR>

" airline
set laststatus=2
"开启tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_theme='luna'
"unicode symbols
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'

" auto-pairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

" coc
let g:coc_global_extensions = [
        \ 'coc-vimlsp',
        \ 'coc-marketplace']
set updatetime=100
" 设置缓存区
set hidden
" 键位
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" 调出补全
inoremap <silent><expr> <c-space> coc#refresh()
" 前一个/后一个报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> <leader>d :call ShowDocumentation()<CR>
function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction
" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" ctrlp
let g:ctrlp_map = '<c-p>'

" easymotion
nmap ss <Plug>(easymotion-s2)

" ============================================================================
"                ============== 键位设置 ===================
" ============================================================================
let mapleader=","
" 进入 normal模式
inoremap jk <Esc> 
" 保存
inoremap <leader>w <Esc>:w<cr>
" 退出
nnoremap <leader>q :q<CR>
nnoremap <space>q :qa<CR>
" 窗口切换
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" 调整窗口大小
nnoremap <space>h :vertical resize +5<CR> 
nnoremap <space>l :vertical resize -5<CR> 
nnoremap <space>k :resize +5<CR> 
nnoremap <space>j :resize +5<CR> 
" 分割窗口
noremap <leader>s <C-w>s
noremap <leader>v <C-w>v
" 跳至行尾
nnoremap ; $
" 行内删除
nnoremap dl d$
nnoremap df d^
" 去除搜索后高亮
nnoremap <space>nl :nohl<CR>
" buffer切换
inoremap <leader>ne <Esc>:bnext<CR>
inoremap <leader>pr <Esc>:bprevious<CR>
nnoremap ne :bnext<CR>
nnoremap pr :bprevious<CR>
