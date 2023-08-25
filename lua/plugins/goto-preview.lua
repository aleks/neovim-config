return {
  {
    "rmagatti/goto-preview",
    config = function(_, opts)
      require('goto-preview').setup(opts)
    end,
    keys = {
      { "<leader>gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", desc = "Preview definition" },
      { "<leader>gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", desc = "Preview type" },
      { "<leader>gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", desc = "Preview implementation" },
      { "<leader>gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", desc = "Preview references" },
      { "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", desc = "Close previews" },
    }
  }
}
