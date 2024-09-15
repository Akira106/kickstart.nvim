-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- tabをspaceにする
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- 末尾、先頭から前後の行に移動する
vim.opt.whichwrap = 'b,s,h,l,[,],<,>,~'

-- jkでescapeする
vim.keymap.set('i', 'jk', '<ESC>', { noremap = true, silent = true })

-- fdで削除結果をレジスタに入れない
vim.keymap.set('n', 'fd', '"_d', { noremap = true, silent = true })

-- 80文字目以降で色を変える
vim.cmd 'highlight ColorColumn ctermbg=235'
vim.cmd "let &colorcolumn=join(range(80,999),',')"
return {
  require 'custom.plugins.coc',
  require 'custom.plugins.nerdtree',
  require 'custom.plugins.copilot',
  require 'custom.plugins.rust',
  require 'custom.plugins.commentary',
}
