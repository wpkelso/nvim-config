require "opts"
require "launch"

spec("plugin.autopairs")
spec("plugin.colorscheme")
spec("plugin.darklight")
spec("plugin.gitsigns")
spec("plugin.lspconfig")
spec("plugin.lualine")
spec("plugin.mini")
spec("plugin.mini-indentscope")
spec("plugin.tiny-inline-diagnostic")
spec("plugin.trouble")
spec("plugin.which-key")
require "lazy-nvim"

require "lsp"
lang("clangd")
lang("pylsp")
lang("lua-ls")

if vim.g.neovide then
    require "neovide"
end
require "keymaps"
