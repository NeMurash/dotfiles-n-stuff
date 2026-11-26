return {
 {
   "brenton-leighton/multiple-cursors.nvim",
   version = "*",
   opts = {},  -- This causes the plugin setup function to be called
   keys = {
     {"<C-j>", "<cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add cursor and move down"},
     {"<C-k>", "<cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add cursor and move up"},

     {"<C-Up>", "<cmd>MultipleCursorsAddUp<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move up"},
     {"<C-Down>", "<cmd>MultipleCursorsAddDown<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move down"},

     -- {"<C-LeftMouse>", "<cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}, desc = "Add or remove cursor on mouse click"},
     -- {"<C-Return>", "<cmd>MultipleCursorsAddDelete<CR>", mode = {"n"}, desc = "Add a locked cursor or remove an existing cursor"},

     {"<space>cv", "<cmd>MultipleCursorsAddVisualArea<CR>", mode = {"x"}, desc = "Add cursors to the lines of the visual area"},

     -- {"<space>cn", "<cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to cword"},
     -- {"<space>cN", "<cmd>MultipleCursorsAddMatchesV<CR>", mode = {"n", "x"}, desc = "Add cursors to cword in previous area"},

     {"<space>cn", "<cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Add cursor and jump to next cword"},
     {"<space>cN", "<cmd>MultipleCursorsJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Jump to next cword"},

     -- {"<space>l", "<cmd>MultipleCursorsLock<CR>", mode = {"n", "x"}, desc = "Lock virtual cursors"},
    }
 }
}
