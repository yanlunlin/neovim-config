return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    ts.install({ "lua", "c", "cpp", "python" })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { "lua", "c", "cpp", "python" },
      callback = function() 
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
