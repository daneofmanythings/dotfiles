-- little flash when highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('user-yank-highlighting', { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      higroup = 'Visual',
      timeout = 75,
    })
  end,
})

-- Sets diagnostic signs for the gutter
vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Set Diagnostic Gutter Icons',
  group = vim.api.nvim_create_augroup('diagnostic-icons', { clear = true }),
  callback = function()
    local icons = require('dane.static.icons')
    for name, icon in pairs(icons.gutter_diagnostics) do
      local hl = 'DiagnosticSign' .. name
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  end,
})

-- setting some legacy treesitter highlights
-- vim.api.nvim_create_autocmd('ColorScheme', {
--   desc = 'Apply legacy treesitter highlights',
--   group = vim.api.nvim_create_augroup('legacy-treesitter', { clear = true }),
--   callback = function()
--     vim.api.nvim_set_hl(0, '@variable.parameter', { link = '@parameter' })
--     vim.api.nvim_set_hl(0, '@variable.member', { link = '@field' })
--     vim.api.nvim_set_hl(0, '@module', { link = '@namespace' })
--     vim.api.nvim_set_hl(0, '@number.float', { link = '@float' })
--     vim.api.nvim_set_hl(0, '@string.special.symbol', { link = '@symbol' })
--     vim.api.nvim_set_hl(0, '@string.regexp', { link = '@string.regex' })
--     vim.api.nvim_set_hl(0, '@function.method', { link = '@method' })
--     vim.api.nvim_set_hl(0, '@function.method.call', { link = '@method.call' })
--     vim.api.nvim_set_hl(0, '@keyword.import', { link = '@include' })
--     vim.api.nvim_set_hl(0, '@keyword.storage', { link = '@storageclass' })
--     vim.api.nvim_set_hl(0, '@keyword.repeat', { link = '@repeat' })
--     vim.api.nvim_set_hl(0, '@keyword.debug', { link = '@debug' })
--     vim.api.nvim_set_hl(0, '@keyword.exception', { link = '@exception' })
--     vim.api.nvim_set_hl(0, '@keyword.conditional', { link = '@conditional' })
--     vim.api.nvim_set_hl(0, '@keyword.conditional.ternary', { link = '@conditional.ternary' })
--     vim.api.nvim_set_hl(0, '@keyword.directive', { link = '@preproc' })
--     vim.api.nvim_set_hl(0, '@keyword.directive.define', { link = '@define' })
--     vim.api.nvim_set_hl(0, '@markup.strong', { link = '@text.strong' })
--     vim.api.nvim_set_hl(0, '@markup.italic', { link = '@text.emphasis' })
--     vim.api.nvim_set_hl(0, '@markup.strikethrough', { link = '@text.strike' })
--     vim.api.nvim_set_hl(0, '@markup.underline', { link = '@text.underline' })
--     vim.api.nvim_set_hl(0, '@markup.heading', { link = '@text.title' })
--     vim.api.nvim_set_hl(0, '@markup.raw', { link = '@text.literal' })
--     vim.api.nvim_set_hl(0, '@markup.raw.block', { link = '@text.literal.block' })
--     vim.api.nvim_set_hl(0, '@markup.quote', { link = '@text.quote' })
--     vim.api.nvim_set_hl(0, '@markup.math', { link = '@text.math' })
--     vim.api.nvim_set_hl(0, '@markup.environment', { link = '@text.environment' })
--     vim.api.nvim_set_hl(0, '@markup.environment.name', { link = '@text.environment.name' })
--     vim.api.nvim_set_hl(0, '@markup.link', { link = '@text.reference' })
--     vim.api.nvim_set_hl(0, '@markup.link.url', { link = '@text.uri' })
--     vim.api.nvim_set_hl(0, '@markup.link.label', { link = '@string.special' })
--     vim.api.nvim_set_hl(0, '@markup.list', { link = '@punctuation.special' })
--     vim.api.nvim_set_hl(0, '@comment.error', { link = '@text.danger' })
--     vim.api.nvim_set_hl(0, '@comment.warning', { link = '@text.warning' })
--     vim.api.nvim_set_hl(0, '@comment.note', { link = '@text.note' })
--     vim.api.nvim_set_hl(0, '@comment.todo', { link = '@text.todo' })
--     vim.api.nvim_set_hl(0, '@diff.plus', { link = '@text.diff.add' })
--     vim.api.nvim_set_hl(0, '@diff.minus', { link = '@text.diff.delete' })
--   end,
-- })
