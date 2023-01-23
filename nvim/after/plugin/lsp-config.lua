-- LSP server
local lsp_servers = {
  sumneko_lua = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  },
  "rust_analyzer",
}

require"mason-lspconfig".setup {
  ensure_installed = lsp_servers
}

local lsp = require"lspconfig"
local cmp_lsp = require"cmp_nvim_lsp"
local telescope = require"telescope.builtin"
local km = require"camiloacosta.utils.keymap"
local merge = require"camiloacosta.utils.table".merge
local is_table = require"camiloacosta.utils.table".is_table

local on_attach = function(_, bufnr)
  local default_opts = { buffer = bufnr, noremap = true, silent = true }

  km.nmap("gd", function()
    vim.lsp.buf.definition()
  end, merge({ desc = "[G]o to [D]efinition" }, default_opts))
  km.nmap("gr", function()
    vim.cmd"vsplit"
    telescope.lsp_references(
      require"telescope.themes".get_ivy()
    )
  end, merge({ desc = "[G]o to [R]eferences" }, default_opts))
  km.nmap("K", vim.lsp.buf.hover, merge({ desc = "Hover Help" }, default_opts))
  km.nmap("<C-k>", vim.lsp.buf.signature_help, merge({ desc = "Signature Help" }, default_opts))
  km.nmap("<f2>", vim.lsp.buf.rename, merge({ desc = "Rename" }, default_opts))
  km.nmap("<leader>ca", vim.lsp.buf.code_action, merge({ desc = "[C]ode [A]ctions" }, default_opts))
  km.nmap("[d", vim.diagnostic.goto_prev, merge({ desc = "Previous Diagnostic" }, default_opts))
  km.nmap("]d", vim.diagnostic.goto_next, merge({ desc = "Next Diagnostic" }, default_opts))
end

for indexOrServer, serverOrConfig in pairs(lsp_servers) do
  local has_config = is_table(serverOrConfig)

  local server_settings = has_config and serverOrConfig or {}
  local server = has_config and indexOrServer or serverOrConfig

  lsp[server].setup {
    capabilities = cmp_lsp.default_capabilities(),
    on_attach = on_attach,
    settings = server_settings
  }
end

--- Setup cmp
vim.g.completeopt= {"menu", "menuone", "noselect"}

local cmp = require"cmp"

-- completes in `:` commandline
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'cmdline' }
    }
})

-- completes in `/` commandline search
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- LuaSnip
local ls = require("luasnip")

km.imap("<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { desc = "expand or jump", silent = true, })

km.imap("<c-j>", function ()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { desc = "jump backwards", silent= true })

