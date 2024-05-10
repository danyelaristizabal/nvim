require("workspaces").setup({
    hooks = {
        open = { "NvimTreeOpen", "Telescope find_files" },
    }
})
