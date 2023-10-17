require('neo-tree').setup({

  vim.fn.sign_define("DiagnosticSignError",
    {text = " ", texthl = "DiagnosticSignError"}),
  vim.fn.sign_define("DiagnosticSignWarn",
    {text = " ", texthl = "DiagnosticSignWarn"}),
  vim.fn.sign_define("DiagnosticSignInfo",
    {text = " ", texthl = "DiagnosticSignInfo"}),
  vim.fn.sign_define("DiagnosticSignHint",
    {text = "󰛩 ", texthl = "DiagnosticSignHint"}),

  close_if_last_window = true,
  filesystem = {
    use_libuv_file_watcher = true,
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true,
    },
  },
  default_component_configs = {
    git_status = {
      symbols = {
      added     = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
      modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
      deleted   = "✖",-- this can only be used in the git_status source
      renamed   = "󰁕",-- this can only be used in the git_status source
              -- Status type
      untracked = "",
      ignored   = "",
      unstaged  = "󰄱",
      staged    = "",
      conflict  = "",
      },
    },
  },

  window = {
    width = 30,
    mappings = {
      ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
      ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
      ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
    },
  },
})
