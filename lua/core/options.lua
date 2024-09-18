local opts = {
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  wrap = false,
  termguicolors = true,
  number = true,
  relativenumber = true,
  list = true,
}

-- Set options from table
for opt, val in pairs(opts) do
  vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

-- Colors are applied automatically based on user-defined highlight groups.
-- There is no default value.
vim.cmd.highlight('IndentLine guifg=#123456')
-- Current indent line highlight
vim.cmd.highlight('IndentLineCurrent guifg=#123456')

vim.api.nvim_create_autocmd({
  "InsertEnter",
  "InsertLeave",
  "BufEnter",
  "BufLeave",
  "WinEnter",
  "WinLeave",
  "CmdlineEnter",
  "CmdlineLeave",
  "VimEnter",
  "VimLeave",
  "ModeChanged",
}, {
  callback = function()
      local mode = vim.api.nvim_get_mode().mode
      if mode == "i" or mode == "ic" then
          vim.opt_local.relativenumber = false
      else
          vim.opt_local.relativenumber = true
      end
  end,
})
