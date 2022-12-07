" 这里是插件安装部分
call plug#begin()

" 文件树插件
Plug 'preservim/nerdtree'

" 自动补全插件
" Plug 'ycm-core/YouCompleteMe'

" 括号生成插件
Plug 'jiangmiao/auto-pairs'

" 查看当前代码文件中的变量和函数列表的插件
Plug 'preservim/tagbar'

" vim状态栏插件，行号、列号、文件类型、文件名、Git状态
Plug 'vim-airline/vim-airline'

" Python代码格式化插件
Plug 'tell-k/vim-autopep8'

call plug#end()




" 这个人设置
inoremap jj <Esc>
set nu
set rnu
set hls

" 使得vim将所有数字都当成10进制
set nrformats=