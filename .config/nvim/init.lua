-- TODO move the lazypath init and options to new files
-- TODO set up nvimlsp --
    -- lsp zero
-- TODO statusline config lualine? 
-- TODO finish sealing from the primagen's config
-- TODO explore treesitter memes a little more

require("bindings")

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

require("lazy").setup({
    spec = "plugins",
    change_detection = {notify = true}
})

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
