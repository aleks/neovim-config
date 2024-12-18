return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "tmux navigate left" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "tmux navigate down" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "tmux navigate up" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "tmux navigate right" },
    },
  },
}
