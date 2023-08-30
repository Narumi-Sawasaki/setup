call plug#begin()
Plug 'zsh-users/zsh-syntax-highlighting'
Plug 'udalov/kotlin-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ollykel/v-vim'
Plug 'jidn/vim-dbml'
call plug#end()

" 行番号表示
set number
" 右下にカーソルの座標を表示
set ruler
" 行末に記号を表示
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
" インクリメンタルサーチ
set incsearch
" 検索結果をハイライト表示
set hlsearch
" 長い行を折り返さない
set nowrap
" 行末でlを押すと次の行頭に移動する
set whichwrap=h,l
" タブを２文字に設定する
set tabstop=2
set shiftwidth=2

set nobackup
set nowritebackup
set laststatus=2

" ;と:を入れ替える
" nnoremap ;  :
" nnoremap :  ;
" vnoremap ;  :
" vnoremap :  ;

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" ヤンクとclipboardの連携
set clipboard+=unnamed
