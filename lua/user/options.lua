lvim.colorscheme = "retrobox"

lvim.builtin.nvimtree.setup.view.preserve_window_proportions = true
lvim.builtin.nvimtree.setup.update_cwd = false
-- vim.opt.equalalways = false
-- vim.api.nvim_win_set_option(0, 'winfixwidth', true)
-- vim.api.nvim_win_set_option(0, 'winfixheight', true)
vim.cmd("set rnu")
vim.cmd("set wrap")

lvim.builtin.treesitter = {
  ensure_installed = { "javascript", "typescript", "lua", "python", "json", "dart" }, -- Add more languages here
  highlight = {
    enable = true,                                                                    -- Enable syntax highlighting
  },
  indent = {
    enable = true, -- Enable automatic indentation
  },
  fold = {
    enable = true, -- Enable Tree-sitter-based folding
  },
}

-- for folding (open/close code block)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "0"    -- no extra colum used to display info on fold
vim.opt.foldtext = ""       -- first line of folding will remain syntax highlight
vim.opt.foldlevel = 99      -- fold status will not be save when u re-enter the file
vim.opt.foldlevelstart = 99 -- there will be no fold once we visit a file
vim.opt.foldenable = false
lvim.format_on_save = true
lvim.builtin.project.active = false
lvim.builtin.project.manual_mode = false

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.json", "*.jsonc" },
  -- enable wrap mode for json files only
  command = "setlocal wrap foldmethod=indent"
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.tsx" },
  -- enable wrap mode for tsx files only
  command = "setlocal wrap foldmethod=syntax"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*" },
  command = "silent! %s/\r//ge//"
})
