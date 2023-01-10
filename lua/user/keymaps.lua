-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-o>", "<C-o>zz", opts)
keymap("n", "<C-i>", "<C-i>zz", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- -- NvimTree
-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader>o", ":NvimTreeFocus<CR>", opts)

-- NeoTree
keymap("n", "<leader>e", ":NeoTreeFocusToggle<CR>", opts)
keymap("n", "<leader>o", ":NeoTreeFocus<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fs", ":Telescope spell_suggest<CR>", opts)
-- keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fF", function()
	require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end)
keymap("n", "gr", ":Telescope lsp_references<CR>", opts)
keymap("n", "gd", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "gk", ":Telescope lsp_type_definitions<CR>", opts)
keymap("n", "fp", ":Telescope neoclip<CR>", {desc = "Neoclip"})

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- harpoon

keymap("n", "<leader>sa",  function() require("harpoon.mark").add_file() end, opts)
keymap("n", "<leader>ss",  function() require("harpoon.ui").toggle_quick_menu() end, opts)

-- zenmode

keymap("n", "<leader>z",  function() require("zen-mode").toggle() end)
-- custom
keymap("n", ";", ":" )
keymap("n", ":", ";" )
keymap("v", ";", ":" )
keymap("v", ":", ";" )
keymap("n", "<leader>c", ":call GotoFileLine2()<cr>")
keymap("n", "<c-c>", '"+yy')
keymap("n", "<leader>99", ':call Wipeout()<cr>')
keymap("n", "[d", function() vim.diagnostic.goto_prev {} end)
keymap("n", "]d", function() vim.diagnostic.goto_next {} end)
keymap("n", "[<S-d>", function() vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR} end)
keymap("n", "]<S-d>", function() vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR} end)
keymap("n", "}", ":<c-u>execute 'keepjumps normal!' v:count1 . '}'<cr>")
keymap("n", "{", ":<c-u>execute 'keepjumps normal!' v:count1 . '{'<cr>")
keymap("n", "n", ":<c-u>execute 'keepjumps normal!' v:count1 . 'n'<cr>")
keymap("n", "N", ":<c-u>execute 'keepjumps normal!' v:count1 . 'N'<cr>")
keymap("n", "<leader>r", ":%s//g<left><left>")
keymap("n", "[q", ":cp<cr>")
keymap("n", "]q", ":cn<cr>")

keymap("n", "<c-q>", function()
	vim.lsp.buf.code_action()
end)
keymap("i", "<c-q>", function()
	vim.lsp.buf.code_action()
end)
keymap("v", "<c-q>", function()
	vim.lsp.buf.code_action()
end)
keymap("i", "<c-v>", '<C-o>"+P')
keymap("i", "<c-BS>", '<C-o>db<c-o>x')
keymap("i", "<c-del> ", "<esc>ldei")
keymap("v", "<c-c>", '"+ygv<Esc>')
keymap("v", "<c-v>", '"+gp')
keymap("v", "<c-s-v>", '"gp')
keymap("v", "y", 'ygv<Esc>')
keymap("v", "<leader>rs", ":s//g<left><left>", {  desc = "Replace something in selection" })
keymap("v", "<leader>rr", '"+ygv<Esc>:%s/<c-r>"/<c-r>"/g<left><left>', { desc = "Replace selction in all" })
keymap("v", "<c-r>", ":s//g<left><left>", { desc = "Replace something in selection" })
keymap("v", "}", ":<c-u>execute 'keepjumps normal!' v:count1 . '}'<cr>")
keymap("v", "{", ":<c-u>execute 'keepjumps normal!' v:count1 . '{'<cr>")

keymap("c", "<c-v>", "<c-r>+", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
keymap("t", "<C-BS>", "<M-BS>", opts)
-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
