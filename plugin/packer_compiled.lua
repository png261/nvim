-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/png261/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/png261/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/png261/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/png261/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/png261/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["hardtime.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\4\0P\0T5\0\0\0005\1\2\0005\2\1\0=\2\3\0015\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\0015\2\20\0=\2\21\0015\2\22\0=\2\23\0015\2\24\0=\2\25\0015\2\26\0=\2\27\0015\2\28\0=\2\29\0015\2\30\0=\2\31\0015\2 \0=\2!\0015\2\"\0=\2#\0015\2$\0=\2%\1=\1&\0005\1(\0005\2'\0=\2)\0015\2*\0=\2+\0015\2,\0=\2-\0015\2.\0=\2/\0015\0020\0=\0021\0015\0022\0=\0023\0015\0024\0=\0025\0015\0026\0=\0027\0015\0028\0=\0029\0015\2:\0=\2;\0015\2<\0=\2=\0015\2>\0=\2?\1=\1@\0005\1B\0005\2A\0=\2C\0015\2D\0=\2E\0015\2F\0=\2G\0015\2H\0=\2I\1=\1J\0005\1K\0=\1L\0006\1M\0'\3N\0B\1\2\0029\1O\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\rhardtime\frequire\23disabled_filetypes\1\6\0\0\aqf\nnetrw\rNvimTree\tlazy\nmason\18disabled_keys\f<RIGHT>\1\3\0\0\5\6i\v<LEFT>\1\3\0\0\5\6i\v<DOWN>\1\3\0\0\5\6i\t<UP>\1\0\0\1\3\0\0\5\6i\20restricted_keys\n<C-P>\1\3\0\0\6n\6v\n<C-N>\1\3\0\0\6n\6v\n<C-M>\1\3\0\0\6n\6v\t<CR>\1\3\0\0\6n\6v\agk\1\3\0\0\6n\6v\agj\1\3\0\0\6n\6v\6+\1\3\0\0\6n\6v\6-\1\3\0\0\6n\6v\6l\1\3\0\0\6n\6v\6k\1\3\0\0\6n\6v\6j\1\3\0\0\6n\6v\6h\1\0\0\1\3\0\0\6n\6v\19resetting_keys\6P\1\2\0\0\6n\6p\1\2\0\0\6n\6Y\1\2\0\0\6n\6y\1\2\0\0\6n\6X\1\2\0\0\6n\6x\1\2\0\0\6n\6d\1\2\0\0\6n\6C\1\2\0\0\6n\6c\1\2\0\0\6n\0069\1\3\0\0\6n\6v\0068\1\3\0\0\6n\6v\0067\1\3\0\0\6n\6v\0066\1\3\0\0\6n\6v\0065\1\3\0\0\6n\6v\0064\1\3\0\0\6n\6v\0063\1\3\0\0\6n\6v\0062\1\3\0\0\6n\6v\0061\1\0\0\1\3\0\0\6n\6v\1\0\6\thint\2\18disable_mouse\2\14max_count\3\2\rmax_time\3�\a\24allow_different_key\1\17notification\2\0" },
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/hardtime.nvim",
    url = "https://github.com/m4xshen/hardtime.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/png261/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  vimwiki = {
    loaded = true,
    path = "/home/png261/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: hardtime.nvim
time([[Config for hardtime.nvim]], true)
try_loadstring("\27LJ\2\n�\a\0\0\4\0P\0T5\0\0\0005\1\2\0005\2\1\0=\2\3\0015\2\4\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\0015\2\20\0=\2\21\0015\2\22\0=\2\23\0015\2\24\0=\2\25\0015\2\26\0=\2\27\0015\2\28\0=\2\29\0015\2\30\0=\2\31\0015\2 \0=\2!\0015\2\"\0=\2#\0015\2$\0=\2%\1=\1&\0005\1(\0005\2'\0=\2)\0015\2*\0=\2+\0015\2,\0=\2-\0015\2.\0=\2/\0015\0020\0=\0021\0015\0022\0=\0023\0015\0024\0=\0025\0015\0026\0=\0027\0015\0028\0=\0029\0015\2:\0=\2;\0015\2<\0=\2=\0015\2>\0=\2?\1=\1@\0005\1B\0005\2A\0=\2C\0015\2D\0=\2E\0015\2F\0=\2G\0015\2H\0=\2I\1=\1J\0005\1K\0=\1L\0006\1M\0'\3N\0B\1\2\0029\1O\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\rhardtime\frequire\23disabled_filetypes\1\6\0\0\aqf\nnetrw\rNvimTree\tlazy\nmason\18disabled_keys\f<RIGHT>\1\3\0\0\5\6i\v<LEFT>\1\3\0\0\5\6i\v<DOWN>\1\3\0\0\5\6i\t<UP>\1\0\0\1\3\0\0\5\6i\20restricted_keys\n<C-P>\1\3\0\0\6n\6v\n<C-N>\1\3\0\0\6n\6v\n<C-M>\1\3\0\0\6n\6v\t<CR>\1\3\0\0\6n\6v\agk\1\3\0\0\6n\6v\agj\1\3\0\0\6n\6v\6+\1\3\0\0\6n\6v\6-\1\3\0\0\6n\6v\6l\1\3\0\0\6n\6v\6k\1\3\0\0\6n\6v\6j\1\3\0\0\6n\6v\6h\1\0\0\1\3\0\0\6n\6v\19resetting_keys\6P\1\2\0\0\6n\6p\1\2\0\0\6n\6Y\1\2\0\0\6n\6y\1\2\0\0\6n\6X\1\2\0\0\6n\6x\1\2\0\0\6n\6d\1\2\0\0\6n\6C\1\2\0\0\6n\6c\1\2\0\0\6n\0069\1\3\0\0\6n\6v\0068\1\3\0\0\6n\6v\0067\1\3\0\0\6n\6v\0066\1\3\0\0\6n\6v\0065\1\3\0\0\6n\6v\0064\1\3\0\0\6n\6v\0063\1\3\0\0\6n\6v\0062\1\3\0\0\6n\6v\0061\1\0\0\1\3\0\0\6n\6v\1\0\6\thint\2\18disable_mouse\2\14max_count\3\2\rmax_time\3�\a\24allow_different_key\1\17notification\2\0", "config", "hardtime.nvim")
time([[Config for hardtime.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
