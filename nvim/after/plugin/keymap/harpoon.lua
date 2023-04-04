local nnoremap = require("rafaelpiloto10.keymap").nnoremap

local silent = { silent = true }

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<leader>tc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, silent)

nnoremap("<C-t>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<C-r>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-w>", function() require("harpoon.ui").nav_file(4) end, silent)
