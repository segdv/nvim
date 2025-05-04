return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },

  config = function()
    local cmp = require("cmp");

    cmp.setup({
      mapping = {
        ["<down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<c-f>"] = cmp.mapping.scroll_docs(4),
        ["<c-b>"] = cmp.mapping.scroll_docs(-4),
        ["<c-space>"] = cmp.mapping.complete(),
        ["<cr>"] = cmp.mapping.confirm({ select = true }),
        ["<tab>"] = cmp.mapping.confirm({ select = true }),
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
    });
  end,
};
