 local path = 'dane.config.'
 local configs = { 'mappings', 'options', 'autocmds' }

 for _, config in ipairs(configs) do
   require(path .. config)
 end
