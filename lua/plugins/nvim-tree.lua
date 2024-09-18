return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local keymap = vim.keymap
      require("nvim-tree").setup({
        keymap.set("n", "<leader>t", require("nvim-tree.api").tree.toggle, {
          silent = true,
          desc = "toggle nvim-tree",
        })
      })
    end,
  },
}
