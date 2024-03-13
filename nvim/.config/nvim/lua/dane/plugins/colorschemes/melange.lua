return {
  'savq/melange-nvim',
  enabled = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('melange')

    -- Adjusting the highlight color for a transparent background.
    vim.api.nvim_set_hl(0, 'Visual', {
      bg = '#524f4c',
    })
    -- Bootstrapping cmp coloring for icons from item_kinds. directly ripped from tokyo night. needs tuning.
    local kinds = {
      Array = '@punctuation.bracket',
      Boolean = '@boolean',
      Class = '@type',
      Color = 'Special',
      Constant = '@constant',
      Constructor = '@constructor',
      Enum = '@lsp.type.enum',
      EnumMember = '@lsp.type.enumMember',
      Event = 'Special',
      Field = '@variable.member',
      File = 'Normal',
      Folder = 'Directory',
      Function = '@function',
      Interface = '@lsp.type.interface',
      Key = '@variable.member',
      Keyword = '@lsp.type.keyword',
      Method = '@function.method',
      Module = '@module',
      Namespace = '@module',
      Null = '@constant.builtin',
      Number = '@number',
      Object = '@constant',
      Operator = '@operator',
      Package = '@module',
      Property = '@property',
      Reference = '@markup.link',
      Snippet = 'Conceal',
      String = '@string',
      Struct = '@lsp.type.struct',
      Unit = '@lsp.type.struct',
      Text = 'Comment',
      TypeParameter = '@lsp.type.typeParameter',
      Variable = '@variable',
      Value = '@string',
    }

    -- Currently only using CmpItemKind. Keeping the logic in for now.
    local kind_groups = { 'NavicIcons%s', 'Aerial%sIcon', 'CmpItemKind%s', 'NoiceCompletionItemKind%s' }
    for kind, link in pairs(kinds) do
      local base = 'LspKind' .. kind
      vim.api.nvim_set_hl(0, base, {
        link = link,
      })
      for _, plugin in pairs(kind_groups) do
        vim.api.nvim_set_hl(0, plugin:format(kind), {
          link = base,
        })
      end
    end
  end,
}
