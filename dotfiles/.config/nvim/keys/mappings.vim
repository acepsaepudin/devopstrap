" link: https://www.chrisatmachine.com/Neovim/02-vim-general-settings/
"vim-commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
"exit terminal mode in neovim
tnoremap <Esc> <C-\><C-n>

" Change current direcotry when open with tab, very usefull when we open new
" terminal 
function! OnTabEnter(path)
  if isdirectory(a:path)
    let dirname = a:path
  else
    let dirname = fnamemodify(a:path, ":h")
  endif
  execute "tcd ". dirname
endfunction()

autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))
