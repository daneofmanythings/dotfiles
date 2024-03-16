return {
  on_attach = function(client, _)
    if client.name == 'ruff_lsp' then
      client.server_capabilities.hoverProvider = false -- defering to pyright
    end
  end,
}
