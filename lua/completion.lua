require('nvim-lsp-setup').setup({
    default_mappings = false,
    mappings = {
        K = 'lua vim.lsp.buf.hover()',
        ['<space>rn'] = 'lua vim.lsp.buf.rename()',
        ['<space>ca'] = 'lua vim.lsp.buf.code_action()',
        ['<space>f'] = 'lua vim.lsp.buf.formatting()',
    },
    -- Global on_attach
    on_attach = function(client, bufnr) 
        require('nvim-lsp-setup.utils').format_on_save(client)
    end,
    -- Global capabilities
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    -- LSP servers
    servers = {
        -- Install LSP servers automatically
        -- LSP server configuration please see: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        pyright = {},
        clangd = require('nvim-lsp-setup.clangd_extensions').setup({}),
        rust_analyzer = require('nvim-lsp-setup.rust-tools').setup({
            server = {
                settings = {
                    ['rust-analyzer'] = {
                        cargo = {
                            loadOutDirsFromCheck = true,
                        },
                        procMacro = {
                            enable = true,
                        },
                    },
                },
            },
        }),
    },
})
