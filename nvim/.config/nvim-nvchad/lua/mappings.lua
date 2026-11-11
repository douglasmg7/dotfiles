require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- -- Runs cargo run in a floating/built-in terminal without blocking Neovim
-- vim.keymap.set('n', '<leader>rr', ':?!cargo run<CR>', { desc = 'Run cargo run' })
-- vim.keymap.set("n", "<leader>rr", ":w<CR> | :Crun<CR>", { desc = "Run cargo run" })
-- vim.keymap.set("n", "<leader>rp", ":w<CR> | <cmd>sp | term python %<CR>", { desc = "Run python script" })
-- vim.keymap.set("n", "<leader>rg", ":w<CR> | <cmd>sp | term go run *<CR>", { desc = "Run run *" })

map("n", "<leader>rr", function()
    vim.cmd("write") -- Save current file
    local ft = vim.bo.filetype
    local file = vim.fn.expand("%:p")
    local cmd = ""

    if ft == "python" then
        cmd = "python3 " .. vim.fn.shellescape(file)
    elseif ft == "javascript" then
        cmd = "node " .. vim.fn.shellescape(file)
    elseif ft == "c" then
        local out = vim.fn.expand("%:r")
        cmd = "gcc "
            .. vim.fn.shellescape(file)
            .. " -o "
            .. vim.fn.shellescape(out)
            .. " && "
            .. vim.fn.shellescape(out)
    elseif ft == "cpp" then
        local out = vim.fn.expand("%:r")
        cmd = "g++ "
            .. vim.fn.shellescape(file)
            .. " -o "
            .. vim.fn.shellescape(out)
            .. " && "
            .. vim.fn.shellescape(out)
    elseif ft == "go" then
        cmd = "go run " .. vim.fn.shellescape(file)
    elseif ft == "rust" then
        cmd = "cargo run"
    else
        print("No run config for filetype: " .. ft)
        return
    end

    -- Open a terminal split and run the command
    vim.cmd("split | terminal " .. cmd)
end, { desc = "Run program based on filetype" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
