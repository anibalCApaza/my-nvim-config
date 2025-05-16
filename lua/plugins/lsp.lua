local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local on_attach = function(_, bufnr)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format { async = true }
            end)
        end

        require("lazydev").setup({})
        require("lspconfig").lua_ls.setup({
                on_attach = on_attach,


                on_init = function(client)
                    if client.workspace_folders then
                        local path = client.workspace_folders[1].name
                        if
                            path ~= vim.fn.stdpath('config')
                            and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
                        then
                            return
                        end
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        runtime = {
                            version = 'LuaJIT',
                            path = {
                                'lua/?.lua',
                                'lua/?/init.lua',
                            },
                        },
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME
                            }
                        }
                    })
                end,
                settings = {
                    Lua = {
                        telemetry = { enable = true },
                        workspace = { checkThirdParty = false }
                    }
                }
            },

            require("lspconfig").pyright.setup({
            }),
            require("lspconfig").ts_ls.setup({

            }),
            require("lspconfig").intelephense.setup({

            }),
            require("lspconfig").html.setup({
                capabilities = capabilities
            }),
            require("lspconfig").cssls.setup({
                capatilities = capabilities
            }),
            require("lspconfig").astro.setup({
            })
        )
    end
}
