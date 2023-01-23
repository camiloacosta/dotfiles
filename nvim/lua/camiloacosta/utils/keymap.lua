local M = {}

--- creates a keymap
---@param mode  'v' | 'x' | 'n' | 'i' | 't' | ''
---@param key string
---@param cmd function | string
---@param opts? table
M.map = function(mode, key, cmd, opts)
  opts = opts == nil and {} or opts
  vim.keymap.set(mode, key, cmd, opts)
end

--- creates a normal keymap
---@param key string
---@param cmd function | string
---@param opts? table
M.nmap = function(key, cmd, opts) M.map("n", key, cmd, opts) end

--- creates an insert keymap
---@param key string
---@param cmd function | string
---@param opts? table
M.imap = function(key, cmd, opts) M.map("i", key, cmd, opts) end

--- creates an visual keymap
---@param key string
---@param cmd function | string
---@param opts? table
M.vmap = function(key, cmd, opts) M.map("v", key, cmd, opts) end

return M
