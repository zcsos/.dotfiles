require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vim", "vimdoc", "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "html", "rust", "markdown", "markdown_inline" },

  highlight = { enable = true },
  indent = { enable = true },

}
