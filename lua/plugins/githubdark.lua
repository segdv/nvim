return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,

  config = function()
    vim.cmd("colorscheme github_dark_high_contrast");

    for _, name in ipairs({ "Normal", "NormalNC", "NonText" }) do
      vim.api.nvim_set_hl(0, name, { bg = "none" });
    end
  end,
};
