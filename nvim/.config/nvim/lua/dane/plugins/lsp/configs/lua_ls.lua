return {
  filetypes = { 'lua' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = {
        -- checkThirdParty = false, -- NOTE: Disabled this to see what happens
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          -- '${3rd}/luv/library',
          -- unpack(vim.api.nvim_get_runtime_file('', true)),
        },
        maxPreload = 100000,
        preloadFilesize = 10000,
      },
      completion = {
        callSnippet = 'Replace',
      },
      -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
    },
  },
}
