return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'go',
        'python',
        'html',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
      },

      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
