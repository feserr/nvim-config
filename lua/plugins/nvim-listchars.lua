return {
  {
    "fraso-dev/nvim-listchars",
    config = function()
      require("nvim-listchars").setup({
        enable = true,
        save_state = true,
        listchars = {
          trail = "-",
          eol = "↲",
          nbsp = "+",
          tab = "» ",
          multispace = "∙"
        },
        exclude_filetypes = {
          "markdown"
        },
        lighten_step = -10,
      })
    end,
  }
}