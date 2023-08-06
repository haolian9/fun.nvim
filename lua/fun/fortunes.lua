local M = {}

local facts = require("fun.facts")

local api = vim.api

local fortunes
do
  local file = assert(io.open(facts.data("fortunes.txt"), "r"))
  local content = file:read("*a")
  file:close()
  fortunes = vim.split(content, "\n--\n", { plain = true })
  fortunes[1] = string.sub(fortunes[1], #"--\n" + 1)
end

---@return string
local function random_one() return assert(fortunes[math.random(#fortunes)]) end

function M.show()
  local lines = vim.split(random_one(), "\n")

  local bufnr
  do
    bufnr = api.nvim_create_buf(false, true)
    local bo = vim.bo[bufnr]
    bo.bufhidden = "wipe"
    bo.undolevels = -1
    api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
    bo.modifiable = false
  end

  do
    local width = 0
    for _, line in ipairs(lines) do
      if #line > width then width = #line end
    end

    local winid = api.nvim_open_win(bufnr, true, {
      relative = "editor",
      border = "single",
      width = width,
      height = #lines,
      row = vim.go.lines - #lines - vim.go.cmdheight,
      col = math.floor((vim.go.columns - width) * 0.5),
      title = "fortune",
    })
    api.nvim_win_set_hl_ns(winid, facts.floatwin_ns)
  end
end

function M.copy() vim.fn.setreg("+", random_one()) end

return M
