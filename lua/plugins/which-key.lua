return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = "echasnovski/mini.icons",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
    config = function()
      local wk = require("which-key")
      wk.setup()
      wk.add({
        { "<leader>b", group = "Debugging" },
        { "<leader>d", group = "Delete/Close" },
        { "<leader>f", group = "File" },
        { "<leader>g", group = "Git" },
        { "<leader>l", group = "LSP" },
        { "<leader>q", group = "Quit" },
        { "<leader>s", group = "Search" },
        { "<leader>u", group = "UI" },
      })
    end
  }
}
