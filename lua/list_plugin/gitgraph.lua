return {
  symbols = {
    merge_commit = "M",
    commit = "*",
  },
  format = {
    timestamp = "%H:%M:%S %d-%m-%Y",
    fields = { "hash", "timestamp", "author", "branch_name", "tag" },
  },
  hooks = {
    on_select_commit = function(commit)
      print("selected commit:", commit.hash)
      vim.notify("DiffviewOpen " .. commit.hash .. "^!")
      vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
    end,
    on_select_range_commit = function(from, to)
      print("selected range:", from.hash, to.hash)
      vim.notify("DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
      vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
    end,
  },
}