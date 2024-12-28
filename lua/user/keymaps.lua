vim.keymap.set("n", "<ESC>", ":noh<CR><ESC>", { noremap = true })

vim.keymap.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<C-x>', '<Plug>(copilot-dismiss)')

lvim.builtin.which_key.mappings["o"] = {
  name = "Session",
  r = { "<cmd>SessionSearch<CR>", "Session search" },
  a = { "<cmd>SessionToggleAutoSave<CR>", "Toggle autosave" }
}

lvim.builtin.which_key.mappings["ga"] = {
  function()
    require("gitgraph").draw({}, { all = true, max_count = 5000 })
  end,
  "GitGraph - Draw",
}

lvim.builtin.which_key.mappings["n"] = {
  name = "Noice",
  h = { "<cmd>Noice history<CR>", "Noice history" },
  l = { "<cmd>Noice last<CR>", "Noice last" },
  s = { "<cmd>Noice summary<CR>", "Noice summary" },
  d = { "<cmd>Noice dismiss<CR>", "Noice dismiss" },
  e = { "<cmd>Noice errors<CR>", "Noice errors" },
  m = { "<cmd>Noice messages<CR>", "Noice messages" },
  t = { "<cmd>Noice telescope<CR>", "Noice telescope" },
}

lvim.builtin.which_key.mappings["F"] = {
  name = "Flutter",
  r = { "<cmd>FlutterRun<CR>", "Run Flutter" },
  q = { "<cmd>FlutterQuit<CR>", "Stop existing flutter" },
  c = { "<cmd>FlutterLogClear<CR>", "Clear flutter log" },
  t = { "<cmd>FlutterLogToggle<CR>", "Toggle flutter log" },
}
