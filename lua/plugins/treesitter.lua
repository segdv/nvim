return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
  },

  config = function()
    vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = "#FA9280", bold = true });
    vim.api.nvim_set_hl(0, "TreesitterContext", { bold = true, bg = "#58332D" });
    vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#58332D" });
  end,
};
