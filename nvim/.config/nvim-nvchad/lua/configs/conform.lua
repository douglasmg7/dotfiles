local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports", "black" },
        go = { "goimports", "gofmt" },
        gotmpl = { "goimports", "gofmt" },
        -- tmpl = { "templ" },
        -- rust = { "rustfmt"}
        -- css = { "prettier" },
        -- html = { "prettier" },
    },

    formatters = {
        stylua = {
            -- -- forces stylua to look upwards into your home/config paths
            -- args = { "--search-parent-directories", "--stdin-filepath", "$FILENAME"},
        },
    },

    -- formatters = {
    --   stylua = {
    --     -- forces stylua to look upwards into your home/config paths
    --     args = { "--search-parent-directories", "--stdin-filepath", "$filename" },
    --   },
    -- },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
