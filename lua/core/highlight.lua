local M = {};

-- Highlight text beyond 100 characters in red
vim.fn.matchadd("LineOverflow", "\\%101v.\\+", 100);
vim.api.nvim_set_hl(0, "LineOverflow", { bg = "#aa0000" });

-- Highlight text beyond 78 characters in comments (after '//') in red
vim.fn.matchadd("CommentOverflow", "//.\\{78\\}\\zs.\\{1,}", 101);
vim.api.nvim_set_hl(0, "CommentOverflow", { bg = "#aa0000" });

-- Utility to toggle cursor visibility
vim.api.nvim_set_hl(0, "NoCursor", { blend = 100, ctermfg = 0 });

M.hide_cursor = function()
  vim.cmd("set guicursor+=a:NoCursor/lCursor");
end

M.show_cursor = function()
  vim.cmd("set guicursor-=a:NoCursor/lCursor");
end

return M;
