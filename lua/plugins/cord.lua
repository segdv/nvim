return {
  "vyfor/cord.nvim",
  build = ":Cord update",

  opts = {
    text = {
      editing = "Editing ${filename} - ${problems} problems",
    },
    buttons = {
      {
        label = function(opts)
          return opts.repo_url and 'View Repository'
        end,
        url = function(opts)
          return opts.repo_url
        end
      }
    },
    variables = {
      problems = function(_) return #vim.diagnostic.get(0) end,
    },
  }
};
