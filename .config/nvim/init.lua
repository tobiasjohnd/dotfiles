---Wishlist---
-- TODO code folding
-- TODO set up nvimlsp
-- TODO telescope.nvim harpoon?
-- TODO nnn file manager
-- TODO language server memes
-- TODO git integration
-- TODO make a keybinging for the folowing
--       TODO check diagnostics
--       TODO run tests

---keybinds---

vim.g.mapleader='<Space>'

vim.keymap.set('', '<C-h>', '<C-w>h')
vim.keymap.set('', '<C-j>', '<C-w>j')
vim.keymap.set('', '<C-k>', '<C-w>k')
vim.keymap.set('', '<C-l>', '<C-w>l')

---Plugins---

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

---options---

vim.o.number=true
vim.o.relativenumber=true

vim.o.showmode=false
vim.o.cmdheight=1

vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab=false
vim.o.smartindent=true

vim.o.mouse='a'
vim.o.updatetime=100

