require "nvchad.options"
-- add yours here!
vim.opt.termguicolors = true
vim.opt.guifont = { "0xProto Nerd Font Mono", ":h24" }
vim.wo.relativenumber = true
vim.o.list = true
vim.o.listchars = "tab:» ,lead:•,trail:•"
vim.o.cursorline = true;
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("TerminalWindow", { clear = true }),
  callback = function()
    vim.cmd("resize 10")
  end
})
