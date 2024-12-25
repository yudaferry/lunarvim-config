vim.api.nvim_create_autocmd({ "VimEnter", 'WinEnter', 'BufWinEnter' }, {
  callback = function()
    require('auto-session').setup {
      bypass_save_filetypes = { "alpha", "dashboard" },
      lazy = false,
      opts = {
        suppressed_dirs = { "~/", "~/Downloads", "/" },
        session_lens = {
          load_on_setup = true,
          previewer = false,
          theme_conf = {
            border = true,
          },
        },
      },
    }
  end,
})
