-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

local cmp_mapping = lsp.defaults.cmp_mappings()
-- "unmap" <Tab>
cmp_mapping['<Tab>'] = nil

lsp.setup_nvim_cmp({
  completion = {
      autocomplete = false
  },
  window = {
      documentation = false;
  },
  mapping = cmp_mapping,
})

lsp.setup();

local cmp = require'cmp'
cmp.setup({
    window = {
      documentation = cmp.config.disable
    }
})
