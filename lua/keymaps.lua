vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ws", vim.cmd("set list!"))

local on_attach = function(client)
  require "completion".on_attach(client)
  local keymap_opts = { buffer = buffer }
  -- Code navigation and shortcuts
  vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
  vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
  vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
  vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
  vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)

  -- Goto previous/next diagnostic warning/error
  vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
  vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)
end

