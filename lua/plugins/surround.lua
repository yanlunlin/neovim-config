return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "nvim-mini/mini.surround",
    version = "false",
    opts = {
      mappings = {
        add = "<leader>sa",
        delete = "<leader>sd",
        find = "",
        find_left = "", -- Find surrounding (to the left)
        highlight = "", -- Highlight surrounding
        replace = "", -- Replace surrounding
      },
    },
  },
}
