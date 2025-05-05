return function(_, bufnr)
  local buf_map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr });
  end

  buf_map("n", "gd", function()
    vim.lsp.buf.definition({
      -- Only go to the first definition
      on_list = function(options)
        if #options.items > 1 then
          vim.fn.setqflist(options.items, ' ');
          vim.cmd('silent cfirst');
        end
      end,
    });
  end);

  buf_map("n", "gi", vim.lsp.buf.implementation);
  buf_map("n", "gr", vim.lsp.buf.references);
  buf_map("n", "K", function()
    vim.lsp.buf.hover({ border = "rounded" });
  end);
  buf_map("n", "<leader>rn", vim.lsp.buf.rename);
  buf_map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action);

  vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr });
    end,
  });
end
