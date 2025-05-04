vim.g.mapleader = " ";
vim.g.maplocalleader = "\\";

local set = vim.keymap.set;

set("n", "<leader>;", "$a;<Esc>");
set("n", "<leader>w", "<cmd>w<cr>");
set("n", "<leader>q", "<cmd>q<cr>");
set("n", "<c-d>", "<cmd>q<cr>");
