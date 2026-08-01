local M = {
    "wpkelso/argonoct-neovim",
    lazy = false,
    priority = 1000,
}

function M.config()
    vim.cmd.colorscheme "argolux"
end

return M
