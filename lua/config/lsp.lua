vim.lsp.config["clangd"] = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--function-arg-placeholders=0",
  },
}

vim.lsp.enable("clangd")
