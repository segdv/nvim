return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = function()
        require("flutter-tools").setup({
            closing_tags = {
                highlight = "FlutterClosingTags",
            }
        });

        vim.api.nvim_set_hl(0, "FlutterClosingTags", { bold = true, fg = "#666666" });
    end,
}
