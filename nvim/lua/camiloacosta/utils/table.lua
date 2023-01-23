local M = {}

M.merge = function (a, b)
  b = b == nil and {} or b
  for key, value in pairs(b) do a[key] = value end
  return a
end

M.is_table = function (o) return type(o) == "table" end

return M
