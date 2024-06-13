return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            ensure_installed = {
                "bash",
                "c", "cpp", "cmake",
                "go",
                "html", "css", "scss", "javascript", "typescript",
                "lua",
                "python",
                "query",
                "rust",
                "vim", "vimdoc",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
