return {
  'iamcco/markdown-preview.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}
