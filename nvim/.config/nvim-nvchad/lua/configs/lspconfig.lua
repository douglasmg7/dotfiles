require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "templ", "cssls", "pyright", "ruff", "gopls" }
local servers = { "html", "cssls", "pyright", "ruff", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
local util = require("lspconfig/util")
vim.lsp.config("gopls", {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "gopls" },
    -- filetypes = { "go", "gomod", "gowork", "gotmpl", "tmpl" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("gowork", "gomod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            staticcheck = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
    -- capabilities = nvlsp.capabilities,
})
