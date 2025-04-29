return {
  -- LSP base plugins
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "clangd",
          "bashls",
          "lua_ls",
        },
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Optional: common settings for all servers
      local on_attach = function(client, bufnr)
        print("LSP attached:", client.name)
      end

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = on_attach,
          })
        end,
      })
    end
  },
}

