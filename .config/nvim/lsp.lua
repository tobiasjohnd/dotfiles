local attach_wrappers = function()
  require'completion'.on_attach()
  require'diagnostic'.on_attach()
end

require'nvim_lsp'.vimls.setup{on_attach=attach_wrappers}
require'nvim_lsp'.bashls.setup{on_attach=attach_wrappers}
require'nvim_lsp'.ghcide.setup{on_attach=attach_wrappers}
