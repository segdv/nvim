local M = {};

-- Utility to toggle cursor visibility
vim.api.nvim_set_hl(0, "NoCursor", { blend = 100, ctermfg = 0 });

M.hide_cursor = function()
  vim.cmd("set guicursor+=a:NoCursor/lCursor");
end

M.show_cursor = function()
  vim.cmd("set guicursor-=a:NoCursor/lCursor");
end

return M;
