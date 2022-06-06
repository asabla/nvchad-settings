local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Custom navigational stuff
map('n', 'ö', '<Right>', opts)
map('n', 'l', '<Up>', opts)
map('n', 'k', '<Down>', opts)
map('n', 'j', '<Left>', opts)

map('v', 'ö', '<Right>', opts)
map('v', 'l', '<Up>', opts)
map('v', 'k', '<Down>', opts)
map('v', 'j', '<Left>', opts)


-- Handle indentation a bit better
map("v", "<S-Tab>", "<gv", opts)
map("v", "<Tab>", ">gv", opts)

-- Toggle line numbers and cursorline
map("n", "<C-n><C-n>", ":set invnumber<CR>", opts)
map("n", "<C-L><C-L>", ":set cursorline!<CR>", opts)


-- Comment/de-comment current line (both normal and visual)
map("n", "<C-K><C-K>", "<cmd>lua require('Comment.api').toggle_current_linewise()<cr>", opts)
map("v", "<C-K><C-K>", "<esc><cmd>lua require('Comment.api').toggle_current_linewise_op(vim.fn.visualmode())<CR>", opts)


-- Telescope bindings
map("n", "<M-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)

local M = {}

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    }
  }
}

M.ui = {
  -- theme = kgruvchad",
}

return M
