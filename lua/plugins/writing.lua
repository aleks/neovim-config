return {
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<F12>", "<cmd>ZenMode<cr>", desc = "Switch to Zen mode" }
    },
    opts = {
      window = {
        backdrop = 1,
        width = 80,
        height = 0.9,
        options = {
          number = false,
        },
      },
    },
  },
  -- {
  --   "folke/twilight.nvim",
  --   opts = {
  --     dimming = {
  --       alpha = 0.6,
  --     },
  --     context = 1,
  --   },
  -- }
}
