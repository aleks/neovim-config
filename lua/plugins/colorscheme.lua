return {
  {
    "shaunsingh/nord.nvim",
    version = false,
    priority = 1000,
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = true
      vim.g.nord_italic = false

      vim.cmd[[colorscheme nord]]

      --
      -- TODO: Remove this again once fixed!
      -- turns off LSP semantic tokens by default
      -- See: https://github.com/shaunsingh/nord.nvim/issues/143
      --
      vim.api.nvim_create_autocmd(
        "LspAttach",
        {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            client.server_capabilities.semanticTokensProvider = nil
          end,
        }
      )
    end,
  }
}
