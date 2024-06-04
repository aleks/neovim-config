return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      settings = {
        save_on_toggle = true,
      },
    },
    config = function(_, opts)
      harpoon = require("harpoon").setup(opts)
      harpoon:extend({
        UI_CREATE = function(cx)
          vim.keymap.set("n", "<C-v>", function()
            harpoon.ui:select_menu_item({ vsplit = true })
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-x>", function()
            harpoon.ui:select_menu_item({ split = true })
          end, { buffer = cx.bufnr })

          vim.keymap.set("n", "<C-t>", function()
            harpoon.ui:select_menu_item({ tabedit = true })
          end, { buffer = cx.bufnr })
        end,
      })
    end,
    keys = function()
      keys = {
        {
          "<leader>q",
          function()
            local harpoon = require('harpoon')
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon: Quick menu"
        },
        {
          "<leader>a",
          function()
            local harpoon = require('harpoon')
            harpoon:list():add()
          end,
          desc = "Harpoon: Add new item"
        },
        {
          "<C-u>",
          function()
            local harpoon = require('harpoon')
            harpoon:list():next()
          end,
          desc = "Harpoon: next file"
        },
        {
          "<C-d>",
          function()
            local harpoon = require('harpoon')
            harpoon:list():prev() end,
          desc = "Harpoon: previous file"
        },
      }

      -- Map keys <leader>1-5 to Harpoon files
      for i = 1, 5 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon to File " .. i,
        })
      end

      return keys
    end
  }
}
