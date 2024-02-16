return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 28,
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function(file_path)
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
