return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'folke/todo-comments.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable('make') == 1
      end,
    },
  },
  keys = {
    -- stylua: ignore start
    { '<leader>sh', '<cmd>Telescope help_tags<cr>',                                                    desc = '[S]earch [H]elp' },
    { '<leader>sk', '<cmd>Telescope keymaps<cr>',                                                      desc = '[S]earch [K]eymaps' },
    { '<leader>sf', '<cmd>Telescope find_files<cr>',                                                   desc = '[S]earch [F]iles' },
    { '<leader>ss', '<cmd>Telescope builtin<cr>',                                                      desc = '[S]earch [S]elect Telescope' },
    { '<leader>sw', '<cmd>Telescope grep_string<cr>',                                                  desc = '[S]earch current [W]ord' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>',                                                    desc = '[S]earch by [G]rep' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>',                                                  desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<cr>',                                                       desc = '[S]earch [R]esume' },
    { '<leader>st', '<cmd>TodoTelescope<cr>',                                                          desc = '[S]earch [T]odos' },
    { '<leader>s.', '<cmd>Telescope oldfiles<cr>',                                                     desc = '[S]earch Recent Files ("." for repeat)' },
    { '<leader>,',  '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>',                     desc = 'Search Open Buffers' },
    { '<leader>/',  '<cmd>Telescope current_buffer_fuzzy_find<cr><cr>',                                desc = '[/] Fuzzily search in current buffer' },
    { '<leader>s/', '<cmd>Telescope live_grep<cr><cr>',                                                desc = '[S]earch [/] in Open Files' },
    { '<leader>sn', '<cmd>Telescope find_files search_dirs={"$HOME/dotfiles/nvim/.config/nvim/"}<cr>', { desc = '[S]earch [N]eovim files' }, },
    { '<leader>ns', '<cmd>Telescope find_files search_dirs={"$ZETTEL"}<cr>',                           { desc = '[S]earch [N]otes' }, },
    -- stylua: ignore end
  },
  config = function()
    local layout_config = {
      vertical = {
        width = function(_, max_columns)
          return math.floor(max_columns * 0.99)
        end,
        height = function(_, _, max_lines)
          return math.floor(max_lines * 0.99)
        end,
        prompt_position = 'bottom',
        preview_cutoff = 0,
      },
    }
    require('telescope').setup({
      defaults = {
        path_display = { 'truncate' },
        layout_strategy = 'vertical',
        layout_config = layout_config,
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    })
    -- Enable telescope extensions, if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
  end,
}
