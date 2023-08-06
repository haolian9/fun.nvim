local facts = require("fun.facts")

local api = vim.api

local lines
do
  local file = assert(io.open(facts.data("cheerup.txt"), "r"))
  local content = file:read("*a")
  file:close()
  lines = vim.split(content, "\n", { plain = true })
end

return function()
  local bufnr
  do
    bufnr = api.nvim_create_buf(false, true)
    local bo = vim.bo[bufnr]
    bo.bufhidden = "wipe"
    bo.undolevels = -1
    api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
    bo.modifiable = false
  end

  local winid = api.nvim_open_win(bufnr, true, {
    relative = "editor",
    border = "single",
    width = 65,
    height = math.floor(vim.go.lines * 0.8),
    row = math.floor(vim.go.lines * 0.1),
    col = math.floor((vim.go.columns - 65) * 0.5),
    title = "to cheer you up",
  })
  api.nvim_win_set_hl_ns(winid, facts.floatwin_ns)
end
