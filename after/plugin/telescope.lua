local telescope = require('telescope')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
    builtin.grep_string({
        search = vim.fn.input("Grep > "),
        results_title = "Search Results",
        attach_mappings = function(_, map)
            map('i', '<CR>', require('telescope.actions').send_to_qflist + require('telescope.actions').open_qflist)
            map('n', '<CR>', require('telescope.actions').send_to_qflist + require('telescope.actions').open_qflist)
            return true
        end,
    })
end)
