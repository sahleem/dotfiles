return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason.nvim',
    },
    config = function ()
        -- imports
        local lspconfig = require('lspconfig')
        -- defaults
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local handler = function (server)
            lspconfig[server].setup({
                capabilities = capabilities
            })
        end
        local lua_handler = function ()
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT'},
                        diagnostics = { globals = { 'vim' } },
                        workspace = { library = vim.env.VIMRUNTIME }
                    },
                }
            })
        end
        -- language servers
        require('mason-lspconfig').setup({
            handlers = {
                handler,
                lua_ls = lua_handler
            },
        })
    end,
}
