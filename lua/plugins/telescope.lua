return {
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<leader>t", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files" },
      { "<leader>f", "<cmd>Telescope live_grep<cr>", desc = "Fuzzy find file contents" },
      { "<leader>h", "<cmd>Telescope oldfiles<cr>", desc = "Recently opened files" },
      { "<leader>j", "<cmd>Telescope jumplist<cr>", desc = "Show jumplist" },
      { "<leader>r", "<cmd>Telescope registers<cr>", desc = "Show register" },
      { "<leader>rg", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in working dir" },
      { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "List open buffers" },
      { "<leader>m", "<cmd>Telescope marks<cr>", desc = "List marks" },
      { "<leader>k", "<cmd>Telescope keymaps<cr>", desc = "Show keymaps" },
      { "<leader>l", "<cmd>Telescope treesitter<cr>", desc = "Show treesitter symbols" },
    },
    opts = {
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                           -- the default case_mode is "smart_case"
        }
      },
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = function(...)
              return require("telescope.actions").close(...)
            end,
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
          },
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
    end,
  },
}
