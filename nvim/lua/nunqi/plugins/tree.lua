return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            hijack_netrw = true,
            hijack_cursor = true,
        })
    end,
}
