return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require("configs.conform"),
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "x", "o" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r",
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
    },

    {
        "chentoast/marks.nvim",
        event = "VeryLazy",
        opts = {},
    },

    {
        "mrcjkb/rustaceanvim",
        -- To avoid being surprised by breaking changes,
        -- I recommend you set a version range
        version = "^9",
        -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
        -- No need for lazy.nvim to lazy-load it.
        lazy = false,
    },

    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            -- Enable automatic rustfmt on save
            vim.g.rustfmt_autosave = 1
        end,
    },

    {
        "saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require("crates").setup({
                completion = {
                    cmp = {
                        enabled = true,
                    },
                },
            })
            require("cmp").setup.buffer({
                sources = { { name = "crates" } },
            })
        end,
    },

    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            -- Only one of these is needed.
            "sindrets/diffview.nvim", -- optional
            "esmuellert/codediff.nvim", -- optional

            -- For a custom log pager
            "m00qek/baleia.nvim", -- optional

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
            "ibhagwan/fzf-lua", -- optional
            "nvim-mini/mini.pick", -- optional
            "folke/snacks.nvim", -- optional
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
        },
    },
    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "templ",
                "css",
                "go",
                "gotmpl",
                "gowork",
                "gomod",
                "gosum",
                "rust",
            },
        },
    },
}
