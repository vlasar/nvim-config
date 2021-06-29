vim.cmd [[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END

  " Taken from: https://github.com/Jorengarenar/dotfiles/blob/master/vim/vimrc
  augroup FORMATOPTIONS
    autocmd!
    autocmd BufWinEnter * set fo-=c fo-=r fo-=o " Disable continuation of comments to the next line
    autocmd BufWinEnter * set formatoptions+=j  " Remove a comment leader when joining lines
    autocmd BufWinEnter * set formatoptions+=l  " Don't break a line after a one-letter word
    autocmd BufWinEnter * set formatoptions+=n  " Recognize numbered lists
    autocmd BufWinEnter * set formatoptions-=q  " Don't format comments
    autocmd BufWinEnter * set formatoptions-=t  " Don't autowrap text using 'textwidth'
  augroup END
]]
