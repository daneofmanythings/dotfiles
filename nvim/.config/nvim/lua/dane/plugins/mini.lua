local mini_path = 'lua.dane.plugins.mini.'

return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    -- require('mini.surround').setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    statusline.setup()

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we disable the section for
    -- cursor information because line numbers are already enabled
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return ''
    end
    require('mini.indentscope').setup {
      version = false, -- wait till new 0.7.0 release to put it back on semver
      lazy = false,
      opts = {
        -- symbol = "▏",
        symbol = '│',
        options = { try_as_border = true },
      },
      init = function()
        vim.api.nvim_create_autocmd('FileType', {
          pattern = {
            'help',
            'alpha',
            'dashboard',
            'neo-tree',
            'Trouble',
            'trouble',
            'lazy',
            'mason',
            'notify',
            'toggleterm',
            'lazyterm',
          },
          callback = function()
            vim.b.miniindentscope_disable = true
          end,
        })
      end,
    }
  end,
}
