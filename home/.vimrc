" Básicas
syntax on
set mouse=a		 	        "integración con mouse			
set clipboard=unnamedplus 	"integración con portapapeles. requiere vim-gtk3	
set number			        "número de fila
set encoding=utf-8  		"permite acentos, ñ y otros símbolos


" Tabulaciones
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
filetype indent on


" Comportamiento de las teclas 
nnoremap <c-s> :w<Enter>
nnoremap <c-q> :q!<Enter>







