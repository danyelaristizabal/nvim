
local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(client, bufnr)
    local opts = { noremap=true, silent=true }

    -- Code actions keymap
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action({apply=true})<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr,'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr,'n', '<leader>gvd', '<cmd>vsplit | lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr,'n', '<leader>gsd', '<cmd>belowright split | lua vim.lsp.buf.definition()<CR>', opts)
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)


  lsp_zero.default_keymaps({buffer = bufnr})
   
end)


require('lspconfig').csharp_ls.setup({})
require('lspconfig').gopls.setup{}
require('lspconfig').ts_ls.setup{}
