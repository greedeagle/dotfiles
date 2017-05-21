
"***************************************
"表示基本設定
"***************************************

"行番号表示
set number
"検索文字列強調
set hlsearch
"検索色の背景を赤、文字色を白で
hi Search cterm=NONE ctermfg=white ctermbg=red
"Visual選択の背景を青、文字色を白
hi visual cterm=NONE ctermfg=white ctermbg=blue

"検索大文字小文字区分なし
set ic
"タブ幅指定
set tabstop=4

"空白可視化
set list
set listchars=tab:>-,trail:-,eol:↲,extends:>,precedes:<,nbsp:%

"バックスペースを行頭で実行できるように
set backspace=indent,eol,start
"カーソル行表示
set cursorline

"tabキーにてタブの代わりにスペースを入れる
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

"***************************************
" dein.vim設定
"***************************************


" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/.vim/rc/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file])
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

" プラグイン以外のその他設定が続く
" :


"***************************************
" キーマッピング設定
"***************************************
"========================================================
"共通マッピング設定======================================
"========================================================
"シフト同時押しで行頭・行末に
noremap <S-h> ^
noremap <S-l> $
"挿入モードから抜けるESCで、IME off
"========================================================
"NERDTree設定============================================
"========================================================
"<c-e>でNERDTreeを切り替え
"nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
"NERDTreeウィンドウ内で、aでファイル操作ウィンドウを開くようにする
augroup myvimrc
    autocmd!
augroup END
autocmd myvimrc filetype nerdtree nnoremap <buffer> a m


"========================================================
"Unite設定===============================================
"========================================================
" 入力モードで開始する
let g:unite_enable_start_insert=0
" バッファ一覧
"noremap <C-U><C-B> :Unite buffer<CR>
" ファイル一覧
"noremap <C-U><C-F> :UniteWithBufferDir -buffer-name=files file<CR>
" 最近使ったファイルの一覧
"noremap <C-U><C-R> :Unite file_mru<CR>
" レジスタ一覧
"noremap <C-U><C-Y> :Unite -buffer-name=register register<CR>
" ファイルとバッファ
"noremap <C-U><C-U> :Unite buffer file_mru<CR>
" 全部
"noremap <C-U><C-A> :Unite UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


"========================================================
"airline設定===============================================
"========================================================
"let g:airline_powerline_fonts = 1
"set laststatus=2
"========================================================
"lightline設定===============================================
"========================================================
set laststatus=2
set t_Co=256

