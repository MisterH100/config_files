require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-S>", "<CMD> w <CR>", { desc = "Write/Save file" })
map("n", "<leader>fe", function()
  vim.cmd "NvimTreeOpen"
  vim.cmd "only"
end, { desc = "Open file tree in full screen" })
map(
  "n",
  "<leader>rr",
  '<CMD> lua require"nvim-tree".change_dir(vim.fn.getcwd()) <CR>',
  { noremap = true, silent = true, desc = "Reload nvim-tree" }
)
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "+", ":Oil ", { desc = "Change directory" })

