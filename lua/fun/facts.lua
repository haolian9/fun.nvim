local M = {}

local api = vim.api

do
  local ns = api.nvim_create_namespace("fun.floatwin")
  api.nvim_set_hl(ns, "normalfloat", { ctermbg = 45, ctermfg = 18 })
  M.floatwin_ns = ns
end

do
  local root
  do
    local this = assert(api.nvim_get_runtime_file("lua/fun/facts.lua", false)[1])
    root = string.sub(this, 1, -(#"facts.lua" + 1))
  end
  function M.data(name) return root .. name end
end

return M
