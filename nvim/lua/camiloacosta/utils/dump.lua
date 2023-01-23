local M = {}

--- pretty print table and return string, 
--- or return original para if it's not a table
--- https://stackoverflow.com/a/27028488
---@param o table | anything
M.dump = function(o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. M.dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

return M