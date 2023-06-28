require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "javascript", "html", "cpp", "lua", "java"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>x]"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>x["] = "@parameter.inner",
      },
    },
  },
}
