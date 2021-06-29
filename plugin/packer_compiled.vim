" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vladimir/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  ["accelerated-jk"] = {
    keys = { { "", "<Plug>(accelerated_jk_gj)" }, { "", "<Plug>(accelerated_jk_gk)" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/accelerated-jk"
  },
  ale = {
    config = { "\27LJ\2\n®\4\0\0\3\0\v\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\0\0=\1\4\0006\0\0\0009\0\3\0'\1\6\0=\1\5\0006\0\0\0009\0\3\0)\1\1\0=\1\a\0006\0\0\0009\0\3\0)\1\0\0=\1\b\0006\0\0\0009\0\3\0)\1\0\0=\1\t\0006\0\0\0009\0\3\0)\1\1\0=\1\n\0K\0\1\0\21ale_set_quickfix\20ale_set_loclist\22ale_lint_on_enter\29ale_lint_on_insert_leave\nnever\29ale_lint_on_text_changed\27ale_completion_enabled\6g§\2    let g:ale_linters = { 'ruby': ['rubocop'], 'eruby': ['erb'], 'javascript': ['eslint'] }\n    let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'ruby': ['rubocop'], 'javascript': ['eslint'] }\n\n    highlight clear ALEErrorSign\n    highlight clear ALEWarningSign\n  \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/ale"
  },
  ["any-jump.vim"] = {
    commands = { "AnyJump" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/any-jump.vim"
  },
  ["bufdelete.nvim"] = {
    commands = { "Bdelete", "Bwipeout" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["git-blame.nvim"] = {
    commands = { "GitBlameEnable" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/git-blame.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopLine", "HopWord" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n◊\3\0\0\3\0\r\0!6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0004\1\0\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\n\0'\2\v\0B\0\2\0016\0\0\0009\0\n\0'\2\f\0B\0\2\1K\0\1\0)hi IndentBlanklineChar guifg=#373b431autocmd CursorMoved * IndentBlanklineRefresh\bcmd4indent_blankline_show_trailing_blankline_indent-indent_blankline_show_first_indent_level*indent_blankline_show_current_context&indent_blankline_filetype_exclude\b‚ñè\26indent_blankline_char\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["iswap.nvim"] = {
    commands = { "ISwap" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/iswap.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\6\0\f\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0004\4\3\0005\5\6\0>\5\1\4=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rsections\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\1\2\1\0\vbranch\ticon\tüåø\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\2\n]\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    keys = { { "", "<C-u>" }, { "", "<C-d>" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nÿ\1\0\0\5\1\t\2\0316\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\21Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0-\2\0\0009\2\6\2'\4\a\0B\2\2\0C\0\0\0X\0\bÄ-\0\0\0009\0\6\0'\2\a\0D\0\2\0X\0\3Ä-\0\0\0009\0\b\0D\0\1\0K\0\1\0\1¿\17autopairs_cr\t<cr>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31£\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3Ä+\1\2\0L\1\2\0X\1\2Ä+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0£\2\0\1\b\0\17\0\0306\1\0\0009\1\1\1'\3\2\0\18\4\0\0005\5\3\0B\1\4\2\18\0\1\0009\1\4\0\15\0\1\0X\2\4Ä6\1\5\0\14\0\1\0X\1\1ÄK\0\1\0006\1\0\0009\1\6\0019\1\a\0019\3\b\0009\4\t\0009\5\n\0005\6\f\0009\a\v\0\19\a\a\0=\a\r\0069\a\14\0=\a\14\0069\a\15\0=\a\16\6B\1\5\1K\0\1\0\texpr\15expression\vsilent\fnoremap\1\0\0\frecurse\ato\tkeys\tmode\20nvim_set_keymap\bapi\18packer_exists\fplugins\1\0\5\frecurse\1\fplugins\1\tmode\5\15expression\1\vsilent\2\tkeep\15tbl_extend\bvimâ\3\0\0\6\1\v\00166\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\5\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0&Ä6\0\0\0009\0\1\0009\0\6\0B\0\1\2\b\0\0\0X\0\6Ä6\0\0\0009\0\1\0009\0\a\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\b\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\17Ä-\0\0\0B\0\1\2\15\0\0\0X\1\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\t\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\4Ä6\0\0\0009\0\1\0009\0\n\0D\0\1\0K\0\1\0\2¿\19compe#complete\n<Tab>.<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>\30UltiSnips#CanJumpForwards\31UltiSnips#CanExpandSnippet\n<C-n>\27nvim_replace_termcodes\bapi\15pumvisible\afn\bvim\2û\2\0\0\6\0\t\1'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\5\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\23Ä6\0\0\0009\0\1\0009\0\6\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\a\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\bÄ6\0\0\0009\0\3\0009\0\4\0'\2\b\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0K\0\1\0\f<S-Tab>(<C-R>=UltiSnips#JumpBackwards()<CR>\31UltiSnips#CanJumpBackwards\n<C-p>\27nvim_replace_termcodes\bapi\15pumvisible\afn\bvim\2∑\a\1\0\b\0\31\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\t\0B\1\2\0026\2\n\0004\3\0\0=\3\v\0026\2\6\0009\2\f\2'\3\14\0=\3\r\0026\2\v\0003\3\16\0=\3\15\2\18\2\0\0'\4\17\0'\5\18\0'\6\19\0005\a\20\0B\2\5\0013\2\21\0003\3\22\0006\4\n\0003\5\24\0=\5\23\0046\4\n\0003\5\26\0=\5\25\4\18\4\3\0005\6\27\0B\4\2\1\18\4\3\0005\6\28\0B\4\2\1\18\4\3\0005\6\29\0B\4\2\1\18\4\3\0005\6\30\0B\4\2\0012\0\0ÄK\0\1\0\1\0\4\15expression\2\tkeys\f<S-Tab>\ato!v:lua.shift_tab_completion()\tmode\6s\1\0\4\15expression\2\tkeys\f<S-Tab>\ato!v:lua.shift_tab_completion()\tmode\6i\1\0\4\15expression\2\tkeys\n<Tab>\ato\27v:lua.tab_completion()\tmode\6s\1\0\4\15expression\2\tkeys\n<Tab>\ato\27v:lua.tab_completion()\tmode\6i\0\25shift_tab_completion\0\19tab_completion\0\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\19nvim-autopairs\20nvim_set_keymap\bapi\bvim\vsource\1\0\a\rnvim_lua\1\tpath\1\tcalc\1\rnvim_lsp\1\nvsnip\1\14ultisnips\2\vbuffer\2\1\0\r\fenabled\2\ndebug\1\18documentation\2\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-revJ.lua"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\trevj\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-revJ.lua"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nß\4\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\15\0005\4\f\0005\5\r\0=\5\14\4=\4\16\3=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0005\5\22\0=\5\14\4=\4\23\0035\4\24\0005\5\25\0=\5\14\4=\4\26\3=\3\27\2B\0\2\1K\0\1\0\rrefactor\15navigation\1\0\2\20goto_definition\bgnd\21list_definitions\bgnD\1\0\1\venable\1\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\3\aaf\20@function.outer\aab\17@block.outer\aac\21@condition.outer\1\0\1\venable\2\vindent\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\2\venable\2\21use_languagetree\2\21ensure_installed\1\0\0\1\2\0\0\truby\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rspec.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/rspec.vim"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\n†\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\nwinhl\nPMenu\nwidth\0032\nblend\3\n\vinc_ms\3\n\rdelay_ms\3\0\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "", "gS" }, { "", "gJ" } },
    loaded = false,
    needs_bufread = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/splitjoin.vim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rsurround\frequire\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/surround.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\nΩ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\3\0=\1\4\0006\0\0\0009\0\1\0'\1\3\0=\1\5\0006\0\0\0009\0\1\0'\1\3\0=\1\6\0K\0\1\0!UltiSnipsJumpBackwardTrigger UltiSnipsJumpForwardTrigger\26UltiSnipsListSnippets\n<NUL>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-closetag"] = {
    config = { "\27LJ\2\nF\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\22*.html.erb,*.html\23closetag_filenames\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-closetag"
  },
  ["vim-devicons-emoji"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-devicons-emoji"
  },
  ["vim-easy-align"] = {
    keys = { { "", "<Plug>(EasyAlign)" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-grepper"] = {
    commands = { "Grepper" },
    config = { "\27LJ\2\nE\0\0\3\0\6\0\a6\0\0\0009\0\1\0005\1\4\0005\2\3\0=\2\5\1=\1\2\0K\0\1\0\ntools\1\0\0\1\3\0\0\bgit\arg\fgrepper\6g\bvim\0" },
    keys = { { "", "<plug>(GrepperOperator)" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-grepper"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-pasta"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-pasta"
  },
  ["vim-picker"] = {
    keys = { { "", "<Plug>(PickerEdit)" }, { "", "<Plug>(PickerBuffer)" } },
    loaded = false,
    needs_bufread = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-picker"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-test"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/opt/vim-test"
  },
  ["vim-textobj-parameter"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-textobj-parameter"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/vladimir/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nÿ\1\0\0\5\1\t\2\0316\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\21Ä6\0\0\0009\0\1\0009\0\3\0B\0\1\0029\0\4\0\b\0\1\0X\0\tÄ6\0\0\0009\0\1\0009\0\5\0-\2\0\0009\2\6\2'\4\a\0B\2\2\0C\0\0\0X\0\bÄ-\0\0\0009\0\6\0'\2\a\0D\0\2\0X\0\3Ä-\0\0\0009\0\b\0D\0\1\0K\0\1\0\1¿\17autopairs_cr\t<cr>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0˛ˇˇˇ\31£\1\0\0\6\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\15\0\1\0X\2\3Ä+\1\2\0L\1\2\0X\1\2Ä+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0£\2\0\1\b\0\17\0\0306\1\0\0009\1\1\1'\3\2\0\18\4\0\0005\5\3\0B\1\4\2\18\0\1\0009\1\4\0\15\0\1\0X\2\4Ä6\1\5\0\14\0\1\0X\1\1ÄK\0\1\0006\1\0\0009\1\6\0019\1\a\0019\3\b\0009\4\t\0009\5\n\0005\6\f\0009\a\v\0\19\a\a\0=\a\r\0069\a\14\0=\a\14\0069\a\15\0=\a\16\6B\1\5\1K\0\1\0\texpr\15expression\vsilent\fnoremap\1\0\0\frecurse\ato\tkeys\tmode\20nvim_set_keymap\bapi\18packer_exists\fplugins\1\0\5\frecurse\1\fplugins\1\tmode\5\15expression\1\vsilent\2\tkeep\15tbl_extend\bvimâ\3\0\0\6\1\v\00166\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\5\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0&Ä6\0\0\0009\0\1\0009\0\6\0B\0\1\2\b\0\0\0X\0\6Ä6\0\0\0009\0\1\0009\0\a\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\b\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\17Ä-\0\0\0B\0\1\2\15\0\0\0X\1\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\t\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\4Ä6\0\0\0009\0\1\0009\0\n\0D\0\1\0K\0\1\0\2¿\19compe#complete\n<Tab>.<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>\30UltiSnips#CanJumpForwards\31UltiSnips#CanExpandSnippet\n<C-n>\27nvim_replace_termcodes\bapi\15pumvisible\afn\bvim\2û\2\0\0\6\0\t\1'6\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\5\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\23Ä6\0\0\0009\0\1\0009\0\6\0B\0\1\2\t\0\0\0X\0\tÄ6\0\0\0009\0\3\0009\0\4\0'\2\a\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0X\0\bÄ6\0\0\0009\0\3\0009\0\4\0'\2\b\0+\3\2\0+\4\2\0+\5\2\0D\0\5\0K\0\1\0\f<S-Tab>(<C-R>=UltiSnips#JumpBackwards()<CR>\31UltiSnips#CanJumpBackwards\n<C-p>\27nvim_replace_termcodes\bapi\15pumvisible\afn\bvim\2∑\a\1\0\b\0\31\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0006\1\0\0'\3\t\0B\1\2\0026\2\n\0004\3\0\0=\3\v\0026\2\6\0009\2\f\2'\3\14\0=\3\r\0026\2\v\0003\3\16\0=\3\15\2\18\2\0\0'\4\17\0'\5\18\0'\6\19\0005\a\20\0B\2\5\0013\2\21\0003\3\22\0006\4\n\0003\5\24\0=\5\23\0046\4\n\0003\5\26\0=\5\25\4\18\4\3\0005\6\27\0B\4\2\1\18\4\3\0005\6\28\0B\4\2\1\18\4\3\0005\6\29\0B\4\2\1\18\4\3\0005\6\30\0B\4\2\0012\0\0ÄK\0\1\0\1\0\4\15expression\2\tkeys\f<S-Tab>\ato!v:lua.shift_tab_completion()\tmode\6s\1\0\4\15expression\2\tkeys\f<S-Tab>\ato!v:lua.shift_tab_completion()\tmode\6i\1\0\4\15expression\2\tkeys\n<Tab>\ato\27v:lua.tab_completion()\tmode\6s\1\0\4\15expression\2\tkeys\n<Tab>\ato\27v:lua.tab_completion()\tmode\6i\0\25shift_tab_completion\0\19tab_completion\0\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\19nvim-autopairs\20nvim_set_keymap\bapi\bvim\vsource\1\0\a\rnvim_lua\1\tpath\1\tcalc\1\rnvim_lsp\1\nvsnip\1\14ultisnips\2\vbuffer\2\1\0\r\fenabled\2\ndebug\1\18documentation\2\19max_menu_width\3d\19max_kind_width\3d\19max_abbr_width\3d\21incomplete_delay\3ê\3\20resolve_timeout\3†\6\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\6\0\f\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0004\4\3\0005\5\6\0>\5\1\4=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rsections\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\0\0\1\2\1\0\vbranch\ticon\tüåø\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-revJ.lua
time([[Config for nvim-revJ.lua]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\trevj\frequire\0", "config", "nvim-revJ.lua")
time([[Config for nvim-revJ.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nß\4\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\15\0005\4\f\0005\5\r\0=\5\14\4=\4\16\3=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0005\5\22\0=\5\14\4=\4\23\0035\4\24\0005\5\25\0=\5\14\4=\4\26\3=\3\27\2B\0\2\1K\0\1\0\rrefactor\15navigation\1\0\2\20goto_definition\bgnd\21list_definitions\bgnD\1\0\1\venable\1\17smart_rename\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\3\aaf\20@function.outer\aab\17@block.outer\aac\21@condition.outer\1\0\1\venable\2\vindent\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\2\venable\2\21use_languagetree\2\21ensure_installed\1\0\0\1\2\0\0\truby\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nΩ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\3\0=\1\4\0006\0\0\0009\0\1\0'\1\3\0=\1\5\0006\0\0\0009\0\1\0'\1\3\0=\1\6\0K\0\1\0!UltiSnipsJumpBackwardTrigger UltiSnipsJumpForwardTrigger\26UltiSnipsListSnippets\n<NUL>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rsurround\frequire\0", "config", "surround.nvim")
time([[Config for surround.nvim]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\n†\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\nwinhl\nPMenu\nwidth\0032\nblend\3\n\vinc_ms\3\n\rdelay_ms\3\0\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ISwap lua require("packer.load")({'iswap.nvim'}, { cmd = "ISwap", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file GitBlameEnable lua require("packer.load")({'git-blame.nvim'}, { cmd = "GitBlameEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Bdelete lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bdelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Bwipeout lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bwipeout", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Grepper lua require("packer.load")({'vim-grepper'}, { cmd = "Grepper", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file AnyJump lua require("packer.load")({'any-jump.vim'}, { cmd = "AnyJump", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <Plug>(accelerated_jk_gj) <cmd>lua require("packer.load")({'accelerated-jk'}, { keys = "<lt>Plug>(accelerated_jk_gj)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Plug>(EasyAlign) <cmd>lua require("packer.load")({'vim-easy-align'}, { keys = "<lt>Plug>(EasyAlign)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-u>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <plug>(GrepperOperator) <cmd>lua require("packer.load")({'vim-grepper'}, { keys = "<lt>plug>(GrepperOperator)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Plug>(accelerated_jk_gk) <cmd>lua require("packer.load")({'accelerated-jk'}, { keys = "<lt>Plug>(accelerated_jk_gk)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Plug>(PickerBuffer) <cmd>lua require("packer.load")({'vim-picker'}, { keys = "<lt>Plug>(PickerBuffer)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Plug>(PickerEdit) <cmd>lua require("packer.load")({'vim-picker'}, { keys = "<lt>Plug>(PickerEdit)", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType eruby ++once lua require("packer.load")({'ale', 'vim-closetag'}, { ft = "eruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType rspec.ruby ++once lua require("packer.load")({'vim-test'}, { ft = "rspec.ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType cucumber ++once lua require("packer.load")({'vim-test'}, { ft = "cucumber" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'ale', 'rspec.vim'}, { ft = "ruby" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/vladimir/.local/share/nvim/site/pack/packer/opt/rspec.vim/after/ftdetect/rspec.vim]], true)
vim.cmd [[source /home/vladimir/.local/share/nvim/site/pack/packer/opt/rspec.vim/after/ftdetect/rspec.vim]]
time([[Sourcing ftdetect script at: /home/vladimir/.local/share/nvim/site/pack/packer/opt/rspec.vim/after/ftdetect/rspec.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
