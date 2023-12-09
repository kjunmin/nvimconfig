-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>q", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- Move Text block up/down

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Allow search terms to stay in the middle of the page
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Copy into system clipboard
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- LSP Format
keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

keymap.set("n", "<C-c>", "<Esc>")

-- Center text after a page move
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split Window
keymap.set("n", "<leader>ws", ":split<Return>", opts)
keymap.set("n", "<leader>wv", ":vsplit<Return>", opts)

--Move Window
keymap.set("n", "<leader>wh", "<C-w>h")
keymap.set("n", "<leader>wk", "<C-w>k")
keymap.set("n", "<leader>wj", "<C-w>j")
keymap.set("n", "<leader>wl", "<C-w>l")
