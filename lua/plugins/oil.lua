return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory (via Oil)" }
    }
  }
}
