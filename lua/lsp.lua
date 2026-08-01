vim.lsp.codelens.enable(not vim.lsp.codelens.is_enabled())
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

function lang(item)
    c = dofile("server/" .. item .. ".lua")
    vim.lsp.config(c["name"], c["config"])
    vim.lsp.enable(c["name"])
end
