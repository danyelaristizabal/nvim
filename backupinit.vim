call plug#begin(stdpath('config') . '/plugged')
Plug 'Hoffs/omnisharp-extended-lsp.nvim'
Plug 'razzmatazz/csharp-language-server'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'flazz/vim-colorschemes'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'razzmatazz/csharp-language-server'


Plug 'valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

:map <C-n> :NERDTreeToggle<CR>
:map <C-p> :GFiles<CR>
:map <C-f> :Files<CR>

" Go to definitions from omnisharp." 
autocmd FileType cs nmap <silent> gd :OmniSharpGotoDefinition<CR> 
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR> 
autocmd FileType cs nmap <buffer> <Leader>fi :OmniSharpFindImplementations<CR> 
autocmd FileType cs nmap <Leader><space> :OmniSharpGetCodeActions<CR> 



nnoremap gd <cmd>lua require('omnisharp_extended').lsp_definition()<cr>

nnoremap gr <cmd>lua require('omnisharp_extended').lsp_references()<cr>

nnoremap gi <cmd>lua require('omnisharp_extended').lsp_implementation()<cr>

colorscheme minimalist

