local on_attach = require("lsp.on-attach");
local capabilities = require("lsp.capabilities");

vim.lsp.config("*", {
  capabilities = capabilities,
});

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    on_attach(vim.lsp.get_client_by_id(args.data.client_id), args.buf)
  end
});

require("lsp.diagnostics");
