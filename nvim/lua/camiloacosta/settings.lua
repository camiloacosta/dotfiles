local vim_opts = {
  number = true,
  relativenumber = true,
  autoindent = true,

  -- tabs per column,
  tabstop = 2,
  -- Indent levels,
  shiftwidth = 2,
  -- tabs to spaces,
  expandtab = true,
  shiftround = true,
  wrap = false,
  scrolloff = 16,
  sidescrolloff = 32,


  -- Interactive mouse with the terminal,
  mouse = 'a',
  cursorline = true,

  colorcolumn = "80",

  -- Set window title with file name,
  title = true,
  -- Don't close buffers, but hides them,
  -- hidden = true,
  list = true,
  listchars = 'tab:»·,trail:·,nbsp:·',
  splitright = true,
  splitbelow = true,

  --
  -- Search
  --
  hlsearch = true,
  incsearch = true,
  -- Ignores case on search,
  ignorecase = true,
  -- Includes case when there is any on query,
  smartcase = true,

  clipboard = 'unnamed',
  fileencoding = 'utf-8',
  updatetime = 3000,
}

for key, value in pairs(vim_opts) do
  vim.opt[key] = value
end

