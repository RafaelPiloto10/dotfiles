local Remap = require("rafaelpiloto10.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<Leader>ff", function() require("telescope.builtin").find_files() end)
nnoremap("<Leader>gf", function() require("telescope.builtin").git_files() end)
nnoremap("<Leader>fg", function() require("telescope.builtin").live_grep() end)
nnoremap("<Leader>fb", function() require("telescope.builtin").buffers() end)
nnoremap("<Leader>fn", function() require("telescope.builtin").help_tags() end)
nnoremap("<Leader>fd", function() require("telescope.builtin").diagnostics() end)
nnoremap("<Leader>fr", function() require("telescope.builtin").lsp_refrences() end)
