require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {
      "lua_ls",
      -- "bashls",
      -- "cssls",
      -- "jsonls",
      -- "tsserver",
      -- "marksman",
      -- "dockerls",
      -- "docker_compose_language_service",
      -- "yamlls",
  }
})


local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- local on_attach = function(client, bufnr)
-- end

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup {
  capabilities = capabilities,
}
lspconfig.tsserver.setup {
  capabilities = capabilities,
}
lspconfig.dockerls.setup {
  capabilities = capabilities,
}
lspconfig.yamlls.setup {
  capabilities = capabilities,
}
lspconfig.docker_compose_language_service.setup {
  capabilities = capabilities,
}
lspconfig.marksman.setup {
  capabilities = capabilities,
}
lspconfig.jsonls.setup {
  capabilities = capabilities,
}
lspconfig.bashls.setup {
  capabilities = capabilities,
}
lspconfig.html.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
  -- cmd = { "vscode-html-language-server", "--stdio" },
  -- filetypes = { "html" },
  -- init_options = {
  --   configurationSection = { "html", "css", "javascript" },
  --   embeddedLanguages = {
  --     css = true,
  --     javascript = true
  --   },
  --   provideFormatter = true
  -- },
  settings = {
    css = {
      lint = {
        validProperties = {},
      },
    },
  },
}
lspconfig.cssls.setup {
  capabilities = capabilities,
}
