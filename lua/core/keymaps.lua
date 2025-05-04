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

set("x", "<leader>p", "\"_dP");

set("n", "<leader>rh", "<cmd>botright new | :terminal<cr>i");
set("n", "<leader>rs", "<cmd>botright vnew | :terminal<cr>i");
set("t", "<esc>", "<c-\\><c-n>");

set("n", "gn", "<cmd>bnext<cr>");

set("x", "<leader>y", "\"+y");
set("n", "<leader>y", "\"+y");

set("n", "<leader>CH", require("core.highlight").hide_cursor);
set("n", "<leader>CR", require("core.highlight").show_cursor);
