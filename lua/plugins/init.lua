config = require 'plugins/config'
local packer = require 'packer'

packer.init({
  luarocks = {
    python_cmd = 'python3' -- Set the python command to use for running hererocks
  }
})

packer.use {
  'AckslD/nvim-revJ.lua',
  requires = {
    'kana/vim-textobj-user',
    'sgur/vim-textobj-parameter'
  },
  config   = function()
    require('revj').setup({})
  end
}
packer.use {
  'SirVer/ultisnips',
  config = config.ultisnips
}
packer.use { 'adelarsq/vim-devicons-emoji' }
packer.use {
  'akinsho/nvim-bufferline.lua',
  requires = {
    'kyazdani42/nvim-web-devicons'
  },
  config   = function()
    require('bufferline').setup({})
  end
}
packer.use { 'andymass/vim-matchup' }
packer.use { 'antoinemadec/FixCursorHold.nvim' }
packer.use {
  'edluffy/specs.nvim',
  config = config.specs
}
packer.use { 'folke/tokyonight.nvim' }
packer.use { 'honza/vim-snippets' }
packer.use {
  'hoob3rt/lualine.nvim',
  requires = {
    'kyazdani42/nvim-web-devicons'
  },
  config   = config.lualine
}
packer.use {
  'hrsh7th/nvim-compe',
  config = config.compe
}
packer.use {
  'nvim-treesitter/nvim-treesitter',
  requires = {
    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'p00f/nvim-ts-rainbow'
  },
  config   = config.treesitter,
  run      = ':TSUpdate'
}
packer.use { 'sickill/vim-pasta' }
packer.use { 'tpope/vim-repeat' }
packer.use { 'wbthomason/packer.nvim' }
packer.use { 'wellle/targets.vim' }
packer.use {
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup({})
  end
}
packer.use {
  "blackCauldron7/surround.nvim",
  config = function()
    require "surround".setup({})
  end
}
packer.use {
  'AndrewRadev/splitjoin.vim',
  keys = { 'gS', 'gJ' }
}
packer.use {
  'TimUntersberger/neogit',
  config = config.neogit,
  cmd = 'Neogit',
  requires = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim'
  }
}
packer.use {
  'alvan/vim-closetag',
  config = config.closetag,
  ft = {'eruby'}
}
packer.use {
  'dstein64/vim-startuptime',
  cmd = 'StartupTime'
}
packer.use {
  'f-person/git-blame.nvim',
  cmd = {'GitBlameEnable'}
}
packer.use {
  'famiu/bufdelete.nvim',
  cmd = {'Bdelete', 'Bwipeout'}
}
packer.use {
  'junegunn/vim-easy-align',
  keys = {'<Plug>(EasyAlign)'}
}
packer.use {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup({})
  end,
  keys = {'<C-u>', '<C-d>'}
}
packer.use {
  'keith/rspec.vim',
  ft = {'ruby'}
}
packer.use {
  'kyazdani42/nvim-tree.lua',
  cmd = 'NvimTreeToggle'
}
packer.use {
  'lukas-reineke/indent-blankline.nvim',
  branch = 'lua',
  event = 'BufRead',
  config = config.indent_blankline
}
packer.use {
  'mhinz/vim-grepper',
  cmd = 'Grepper',
  config = config.grepper,
  keys = {'<plug>(GrepperOperator)'}
}
packer.use {
  'mizlan/iswap.nvim',
  cmd = 'ISwap'
}
packer.use {
  'pechorin/any-jump.vim',
  cmd = 'AnyJump'
}
packer.use {
  'phaazon/hop.nvim',
  cmd = {'HopLine', 'HopWord'}
}
packer.use {
  'rhysd/accelerated-jk',
  keys = {'<Plug>(accelerated_jk_gj)', '<Plug>(accelerated_jk_gk)'}
}
packer.use {
  'srstevenson/vim-picker',
  keys = {'<Plug>(PickerEdit)', '<Plug>(PickerBuffer)'}
}
packer.use {
  'vim-test/vim-test',
  ft = {'cucumber', 'rspec.ruby'}
}
packer.use {
  'w0rp/ale',
  config = config.ale,
  ft = {'eruby', 'ruby'}
}
packer.use { 'kevinhwang91/nvim-bqf' }

vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
vim.api.nvim_set_keymap('n', '<Leader>j', '<cmd>AnyJump<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>l', '<cmd>HopLine<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>w', '<cmd>HopWord<CR>', {})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})
vim.api.nvim_set_keymap('n', 'gs', '<plug>(GrepperOperator)', {})
vim.api.nvim_set_keymap('x', 'gs', '<plug>(GrepperOperator)', {})
vim.api.nvim_set_keymap('n', '<Leader>f', '<Plug>(PickerEdit)', {})
vim.api.nvim_set_keymap('n', '<Leader>b', '<Plug>(PickerBuffer)', {})
vim.api.nvim_set_keymap('n', '<Leader>;', '<cmd>TestNearest<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>\'', '<cmd>TestFile<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>Neogit<CR>', {})

vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>noh<CR>', {})
