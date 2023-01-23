local M = {}

--- Call a function; show a notification if it fails
--- https://gitlab.com/gabmus/nvpunk/-/blob/master/lua/nvpunk/util/try.lua
---@param func function
---@param args table
---@param error? string
---@param context? string
M.call = function(func, args, error, context)
  error = error == nil and "Failed to call function" or error
  context = context == nil and "camiloacosta.try.call" or context
  local ok, res = pcall(func, unpack(args))
  if not ok then
    vim.notify(error, "error", { title = context })
  end

  return res
end

--- Try to call require; show a notification if it fails
--- https://gitlab.com/gabmus/nvpunk/-/blob/master/lua/nvpunk/util/try.lua
---@param module string
M.require = function(module)
  return M.call(
    require,
    {module},
    "Filed to load module " .. module,
    "camiloacosta.try.require"
  )
end

return M
