return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                          , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        map("n", "ff", builtin.find_files, {}) -- search file name
        map("n", "fs", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end) -- search file with string
    end,
}
