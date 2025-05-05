return {
  "mhinz/vim-signify",
  config = function()
    vim.g.signify_sign_add = "";
    vim.g.signify_sign_delete = "";
    vim.g.signify_sign_delete_first_line = "";
    vim.g.signify_sign_change = "";

    vim.g.signify_sign_show_count = 0;

    local highlight = function(name, ctermfg, fg)
      vim.api.nvim_set_hl(0, name, { ctermbg = "none", bg = "none", ctermfg = ctermfg, fg = fg });
    end

    highlight("SignifySignAdd", "Green", "#98C379");
    highlight("SignifySignDelete", "Red", "#E06C75");
    highlight("SignifySignChange", "Yellow", "#E5C07B");
    highlight("SignifySignDeleteFirstLine", "DarkRed", "#BE5046");
  end,
};
