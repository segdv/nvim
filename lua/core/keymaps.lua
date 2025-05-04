vim.g.mapleader = " ";
vim.g.maplocalleader = "\\";

local set = vim.keymap.set;

set("n", "<leader>;", "$a;<Esc>");
set("n", "<leader>w", "<cmd>w<cr>");
set("n", "<leader>q", "<cmd>q<cr>");
set("n", "<c-d>", "<cmd>q<cr>");

set("n", "<leader>h", "<c-w>h");
set("n", "<leader>t", "<c-w>j");
set("n", "<leader>n", "<c-w>k");
set("n", "<leader>s", "<c-w>l");

set("n", "<leader>u", "<cmd>Ex<cr>");

set("v", "J", ":m '>+1<cr>gv=gv");
set("v", "K", ":m '<-2<cr>gv=gv");
