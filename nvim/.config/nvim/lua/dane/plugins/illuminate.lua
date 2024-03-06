return {
  'RRethy/vim-illuminate',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('illuminate').configure({
      providers = {
        'lsp',
        'treesitter',
      },
      delay = 100,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { 'lsp' },
      },
    })

    -- converts underline to highlight.
    local hl_groups = {
      -- 'IlluminatedWord',
      -- 'IlluminatedCurWord',
      'IlluminatedWordText',
      'IlluminatedWordRead',
      'IlluminatedWordWrite',
    }
    for _, hl_group in ipairs(hl_groups) do
      vim.api.nvim_set_hl(0, hl_group, {
        link = 'Visual',
      })
    end
  end,
}
