return {
  "lukas-reineke/indent-blankline.nvim",

  config = function()
    local hooks = require "ibl.hooks";

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "BlanklineNormal", { fg = "#303030" });
    end);

    require("ibl").setup({
      indent = {
        highlight = {
          "BlanklineNormal",
        },
      },
      scope = {
        highlight = {
          "BlanklineNormal",
        },
      }
    });
  end,
};
