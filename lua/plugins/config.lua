local config = {}

function config.compe()
  require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
      path = false;
      buffer = true;
      calc = false;
      nvim_lsp = false;
      nvim_lua = false;
      vsnip = false;
      ultisnips = true;
    };
  }

  local remap = vim.api.nvim_set_keymap
  local npairs = require('nvim-autopairs')

  -- skip it, if you use another global object
  _G.MUtils= {}

  vim.g.completion_confirm_key = ""
  MUtils.completion_confirm=function()
    if vim.fn.pumvisible() ~= 0  then
      if vim.fn.complete_info()["selected"] ~= -1 then
        return vim.fn["compe#confirm"](npairs.esc("<cr>"))
      else
        return npairs.esc("<cr>")
      end
    else
      return npairs.autopairs_cr()
    end
  end

  remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

  local is_prior_char_whitespace = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
      return true
    else
      return false
    end
  end

  --[[
   _          _
  | |__   ___| |_ __   ___ _ __ ___
  | '_ \ / _ \ | '_ \ / _ \ '__/ __|
  | | | |  __/ | |_) |  __/ |  \__ \
  |_| |_|\___|_| .__/ \___|_|  |___/
               |_|
   ]]
  -- A little utility function to make nvim_set_keymap a bit more ergonomic
  local function map(args)
    args = vim.tbl_extend("keep", args, {
      mode = "", -- The vim mode for this map
      keys = nil, -- The input sequence of keys to activate this mapping
      to = nil, -- Sequence to keys to 'type' into the editor

      recurse = false, -- set to true to not include noremap
      silent = true, -- set to false to not include <silent>, e.g. the map will not be echoed to the command line
      expression = false, -- set to true if the output is to be evaluated rather than typed
      plugins = false, -- set to true if the mapping requires plugins and should be disabled when packer wasn't loaded
    })

    if (args.plugins) and (not packer_exists) then
      return
    end

    vim.api.nvim_set_keymap(args.mode, args.keys, args.to, { noremap = not args.recurse, silent = args.silent, expr = args.expression })
  end


  -- Use (shift-)tab to:
  --- move to prev/next item in completion menu
  --- jump to the prev/next snippet placeholder
  --- insert a simple tab
  --- start the completion menu
  _G.tab_completion = function()
    if vim.fn.pumvisible() == 1 then
      return vim.api.nvim_replace_termcodes("<C-n>", true, true, true)

    elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
      return vim.api.nvim_replace_termcodes("<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>", true, true, true)

    elseif is_prior_char_whitespace() then
      return vim.api.nvim_replace_termcodes("<Tab>", true, true, true)

    else
      return vim.fn['compe#complete']()
    end
  end
  _G.shift_tab_completion = function()
    if vim.fn.pumvisible() == 1 then
      return vim.api.nvim_replace_termcodes("<C-p>", true, true, true)

    elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
      return vim.api.nvim_replace_termcodes("<C-R>=UltiSnips#JumpBackwards()<CR>", true, true, true)

    else
      return vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true)
    end
  end

  map{mode = 'i', keys = "<Tab>", to = [[v:lua.tab_completion()]], expression = true}
  map{mode = 's', keys = "<Tab>", to = [[v:lua.tab_completion()]], expression = true}
  map{mode = 'i', keys = "<S-Tab>", to = [[v:lua.shift_tab_completion()]], expression = true}
  map{mode = 's', keys = "<S-Tab>", to = [[v:lua.shift_tab_completion()]], expression = true}
end

function config.ultisnips()
  vim.g.UltiSnipsExpandTrigger = "<NUL>"
  vim.g.UltiSnipsListSnippets = "<NUL>"
  vim.g.UltiSnipsJumpForwardTrigger = "<NUL>"
  vim.g.UltiSnipsJumpBackwardTrigger = "<NUL>"
end

function config.closetag()
  vim.g.closetag_filenames = "*.html.erb,*.html"
end

function config.vim_test()
  vim.cmd([[
    "let test#ruby#rspec#options = "--force-color"

    let test#strategy = { 'nearest': 'basic', 'file': 'neovim' }
    " let test#strategy = 'neovim'
    " let test#strategy = 'dispatch'
    " let test#strategy = 'kitty'
    let g:test#preserve_screen = 1

    " The built-in mapping for exiting terminal insert mode is CTRL-\ CTRL-n, which
    " is difficult to press, so I recommend mapping it to CTRL-o:
    tmap <C-o> <C-\><C-n>

    nmap <silent> <leader>; :TestNearest<CR>
    nmap <silent> <leader>' :TestFile<CR>
    nmap <silent> <leader>[ :TestLast<CR>
    nmap <silent> <leader>] :TestVisit<CR>
  ]])
end

function config.indent_blankline()
  vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
  vim.g.indent_blankline_char = '▏'
  vim.g.indent_blankline_filetype_exclude = {}
  vim.g.indent_blankline_show_current_context = false
  vim.g.indent_blankline_show_first_indent_level = false
  vim.g.indent_blankline_show_trailing_blankline_indent = false

  vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
  vim.cmd('hi IndentBlanklineChar guifg=#373b43')
end

function config.grepper()
  vim.g.grepper = { tools = {'git', 'rg'} }
end

function config.specs()
  require('specs').setup({
    show_jumps  = true,
    min_jump = 30,
    popup = {
      delay_ms = 0, -- delay before popup displays
      inc_ms = 10, -- time increments used for fade/resize effects 
      blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
      width = 50,
      winhl = "PMenu",
      fader = require('specs').linear_fader,
      resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ignore_buftypes = {
      nofile = true,
    },
  })
end

-- Treesitter
function config.treesitter()
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'ruby' },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    rainbow = {
      enable = true,
      extended_mode = true
    },
    indent = {
      enable = true
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["ab"] = "@block.outer",
          ["ac"] = "@condition.outer",
          ["af"] = "@function.outer",
        },
      },
    },
    refactor = {
      highlight_definitions = { enable = true },
      smart_rename = {
        enable = true,
        keymaps = {
          smart_rename = "grr",
        },
      },
      navigation = {
        enable = false,
        keymaps = {
          goto_definition = "gnd",
          list_definitions = "gnD"
        },
      },
    },
  }
end

-- Lualine
function config.lualine()
  require'lualine'.setup {
    options = {
      theme = 'tokyonight'
    },
    sections = {
      lualine_b = {
        {
          'branch',
          icon = "🌿"
        }
      },
      lualine_c = {
        {
          'filename',
          path = 1
        }
      }
    }
  }
end

function config.ale()
  vim.cmd([[
    let g:ale_linters = { 'ruby': ['rubocop'], 'eruby': ['erb'], 'javascript': ['eslint'] }
    let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'ruby': ['rubocop'], 'javascript': ['eslint'] }

    highlight clear ALEErrorSign
    highlight clear ALEWarningSign
  ]])

  vim.g.ale_completion_enabled   = 0
  vim.g.ale_lint_on_text_changed = 'never'
  vim.g.ale_lint_on_insert_leave = 1
  vim.g.ale_lint_on_enter        = 0
  vim.g.ale_set_loclist          = 0
  vim.g.ale_set_quickfix         = 1
end

function config.neogit()
  local neogit = require("neogit")

  neogit.setup {
    integrations = {
      diffview = true
    }
  }
end

return config
