vim.keymap.set("n", "<ESC>", ":noh<CR><ESC>", { noremap = true })

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
