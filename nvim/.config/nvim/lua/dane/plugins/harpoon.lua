return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local harpoon_extensions = require("harpoon.extensions")

    harpoon:setup()

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end
      pickers.new({}, {
        prompt_title = "Harpoon",
        finder = finders.new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end

    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

    vim.keymap.set("n", "<leader>sh",
      function() toggle_telescope(harpoon:list()) end,
      { desc = "[S]earch [h]arpoon" })
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end,
      { desc = "[H]arpoon [a]dd file" })

    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<leader>mf", function() harpoon:list():select(1) end,
      { desc = "Harpoon [m]ove [f]irst" })
    vim.keymap.set("n", "<leader>mj", function() harpoon:list():select(2) end,
      { desc = "Harpoon [m]ove [s]econd" })
    vim.keymap.set("n", "<leader>mk", function() harpoon:list():select(3) end,
      { desc = "Harpoon [m]ove [t]hird" })
    vim.keymap.set("n", "<leader>ml", function() harpoon:list():select(4) end,
      { desc = "Harpoon [m]ove fou[r]th" })
  end,
}
