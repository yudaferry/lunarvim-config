lvim.plugins = {
  { "rmagatti/auto-session" },
  { "sindrets/diffview.nvim" },
  {
    "isakbm/gitgraph.nvim",
    opts = require("list_plugin.gitgraph")
  },
  { "akinsho/toggleterm.nvim" },
  { "mgierada/lazydocker.nvim" },
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },
  { "folke/noice.nvim" },
  -- {
  --   "codota/tabnine-nvim",
  --   build = "./dl_binaries.sh"
  -- }
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter'
  -- },
  -- {
  --   'kiddos/gemini.nvim',
  --   build = { 'pip install -r requirements.txt', ':UpdateRemotePlugins' },
  --   config = function()
  --     require('gemini').setup()
  --   end
  -- },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    opts = {},
  },
  {
    "github/copilot.vim"
  },
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',   -- optional for vim.ui.select
    },
    config = true,
  }
}
