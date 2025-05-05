vim.opt.updatetime = 100;

vim.api.nvim_create_autocmd({ "CursorHold" }, {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float({
      scope = "cursor",
      focusable = false,
      close_events = {
        "CursorMoved",
        "CursorMovedI",
        "BufHidden",
        "InsertCharPre",
        "WinLeave",
      },
    });
  end,
});
