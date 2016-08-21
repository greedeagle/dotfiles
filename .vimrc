"色テーマ
colorscheme darkblue

"行番号表示
set number
"検索文字列強調
set hlsearch
"検索大文字小文字区分なし
set ic
"タブ幅指定
set tabstop=4

"空白可視化
set list
set listchars=tab:>-,trail:-,eol:↲,extends:>,precedes:<,nbsp:%

"バックスペースを行頭で実行できるように
set backspace=indent,eol,start

"入力途中のコマンドを表示
set showcmd
"現在の選択行を表示
set cursorline
"IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=Green
  highlight CursorIM guifg=NONE guibg=Purple
endif

"ステータス行を常に表示
set laststatus=2






