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

return {
  require 'custom.plugins.coc',
  require 'custom.plugins.nerdtree',
}
