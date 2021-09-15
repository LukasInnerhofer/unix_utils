function! UseTabs()
	set tabstop=4
	set shiftwidth=4
	set noexpandtab
	set autoindent
endfunction

function! UseSpaces()
	set tabstop=4
	set shiftwidth=4
	set expandtab
	set softtabstop=0
	set autoindent
	set smarttab
endfunction

call UseSpaces()

filetype plugin indent on

set number

