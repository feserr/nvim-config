-- Git related plugins
return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "akinsho/git-conflict.nvim",
    commit = "2957f74",
    config = function()
      require("git-conflict").setup({
        default_mappings = {
          ours = "co",
          theirs = "ct",
          none = "c0",
          both = "cb",
          next = "cn",
          prev = "cp",
        },
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function ()
      local map = require("helpers.keys").map
      map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
      map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")
      map("n", "<leader>gs", "<cmd>Git<cr>", "Git: show status")
      map("n", "<leader>gw", "<cmd>Gwrite<cr>", "Git: add file")
      map("n", "<leader>gc", "<cmd>Git commit<cr>", "Git: commit changes")
      map("n", "<leader>gpl", "<cmd>Git pull<cr>", "Git: pull changes")
      map("n", "<leader>gpu", "<cmd>15 split|term git push<cr>", "Git: push changes")
      map("v", "<leader>gb", ":Git blame<cr>", "Git: blame selected line")
    end
  }
}
