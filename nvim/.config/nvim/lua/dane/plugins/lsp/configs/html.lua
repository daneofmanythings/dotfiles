return {
  on_attach = function(client, _)
    client.capabilities.textDocument.completion.completionItem.snippetSupport = true
  end,
}
