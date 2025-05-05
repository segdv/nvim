return {
  "williamboman/mason-lspconfig.nvim",

  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {},
      automatic_installation = true,
    });

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = require("lsp.capabilities"),
          on_attach = require("lsp.on-attach"),
        });
      end,
    });
  end,
};
