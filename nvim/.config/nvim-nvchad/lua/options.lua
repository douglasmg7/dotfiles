require("nvchad.options")

-- add yours here!
local o = vim.o

o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
o.shiftwidth = 4 -- Size of an indent
o.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
o.expandtab = true -- Convert tabs to spaces

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.diagnostic.config({
    virtual_text = false, -- Disable single-line truncated text
    virtual_lines = {
        current_line = true, -- Only show multiline errors on the cursor's current line to reduce clutter
    },
})
