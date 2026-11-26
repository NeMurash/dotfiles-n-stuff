require("config.lazy")

vim.o.bg=dark
vim.cmd "colorscheme koehler"

vim.keymap.set("n", "<space><space>r", ":restart<cr>")

vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<space>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<space>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<space>fh", "<cmd>Telescope help_tags<cr>")
vim.keymap.set("n", "<space>fd", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<space>fm", "<cmd>Telescope marks<cr>")
vim.keymap.set("n", "<space>ft", "<cmd>Telescope colorscheme<cr>")

vim.keymap.set("n", "<space>dd", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "<space>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")
vim.keymap.set("n", "<space>dN", "<cmd>lua vim.diagnostic.goto_prev()<cr>")

vim.keymap.set("n", "<space>h", "<cmd>nohl<cr>")
vim.keymap.set("n", "<space>sr", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<space>sd", function() vim.lsp.buf.definition() end)

vim.keymap.set("n", "<space>to", "<cmd>vsp<cr><cmd>terminal<cr><C-w>LA")
vim.keymap.set("n", "<space>tn", "<cmd>vsp<cr><cmd>terminal<cr><C-w>LAnnn<cr>")
vim.keymap.set("n", "<space>tb", "<cmd>vsp<cr><cmd>terminal<cr><C-w>LAcd build<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>c", "<cmd>q<cr>");

vim.o.shiftwidth=2
vim.o.smarttab=true
vim.o.expandtab=true

vim.o.tabstop=8
vim.o.softtabstop=8

vim.o.rnu=true
vim.o.nu=true

vim.lsp.enable("clangd")
vim.lsp.enable("hls")
vim.lsp.enable("gdscript")
vim.lsp.enable("clojure_lsp")
vim.lsp.enable('lua_ls')
