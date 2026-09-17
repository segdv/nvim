return {
  "mfussenegger/nvim-jdtls",

  config = function()
    vim.lsp.config("jdtls", {
      settings = {
        java = {
          format = {
            settings = {
              url = "~/.config/nvim/codestyles/java.xml",
              profile = "GoogleStyle",
            }
          }
        },
      },
    });

    vim.lsp.enable("jdtls");
  end
};
