-- Generic
vim.diagnostic.config({ virtual_text = true })

-- GoLang
vim.lsp.enable("golangci-lint-langserver")
vim.lsp.enable("gopls")
