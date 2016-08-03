inoremap jk <Esc>
let mapleader = " "
map <C-n> :NERDTreeToggle<CR>
imap <C-Return> <CR><CR><C-o>k<Tab>
"inoremap {<tab> {<CR>}<up><end><CR>
nmap <leader>h :nohlsearch<cr>
nmap <leader>bd :bufdo bd<cr>

" Write to file with  Leader w
imap <Leader><SPACE>w <ESC>:w<CR>
nmap <Leader>w :w<CR>

" Jump between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Rails relevant mappings
nnoremap <Leader>bi :! bundle install<CR>

" Elixir
" nnoremap <leader>et :!mix test<CR>
nnoremap <leader>dg :!mix deps.get<CR>
nnoremap <leader>et :!elixir '%'<CR>

" bind K to grep word under cursor
nnoremap <C-f> :Ag
nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Open URL under cursor
function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
map <leader>u :call HandleURL()<cr>

" Learn the hard way
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>em :vsp ~/.vim/startup/mappings.vim<CR>

" Common abbreviations
iabbrev geml ilya.krasnov@gmail.com
iabbrev ch Chapter

" Buffer navigation
nmap <Leader>n :bnext<CR>
nmap <Leader>p :bprevious<CR>
nmap <Leader>x :bdelete<CR>

" Add and remove pry quickly
nmap <Leader>rp orequire "pry"; binding.pry<ESC>:w<CR><SPACE>
iabbr rp require "pry"; binding.pry<ESC>:w<CR>
nmap <Leader>dp :g/pry/d<CR>:w<CR>

" Line manipulations
nnoremap - dd

" Autocommands
autocmd BufNewFile * :write

" Autoindent
nnoremap <Leader>ind gg=G

" Line up
nnoremap <Leader>lu :j!<CR>

" Markdown
" converts current file to pdf using mp script
nnoremap <Leader>tp :!mp '%'<CR>

iabbr h1 #
iabbr h2 ##
iabbr h3 ###
iabbr h4 ####

nnoremap <Leader>gb :Sexplore ~/Dropbox\ \(Personal\)/book_summaries<CR>
