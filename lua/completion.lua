require('lsp-setup').setup({
    installer = {},
    default_mappings = false,
    -- Global on_attach
    on_attach = function(client, bufnr) 
        require('lsp-setup.utils').format_on_save(client)
        vim.api.nvim_create_autocmd("CursorHold", {
            buffer = bufnr,
            callback = function()
                local opts = {
                    focusable = false,
                    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                    border = 'rounded',
                    source = 'always',
                    prefix = ' ',
                    scope = 'cursor',
                }
                vim.diagnostic.open_float(nil, opts)
            end
        })
    end,
    -- Global capabilities
    capabilities = vim.lsp.protocol.make_client_capabilities(),

    -- LSP servers --
    servers = {
        -- Install LSP servers automatically
        -- LSP server configuration please see: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        gopls = {},
        pyright = {},
    },
})
