return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
  },

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "java" },
    });

    vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = "grey" });
    vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { underline = true, sp = "grey" });
    vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "none" });
  end,
};
