-- KEYS

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- closing pairs
-- vim.keymap.set([[i]], [[']], [[''<left>]])
-- vim.keymap.set([[i]], [["]], [[""<left>]])
-- vim.keymap.set([[i]], [[(]], [[()<left>]])
-- vim.keymap.set("i", "[", "[]<left>")
-- vim.keymap.set([[i]], [[{]], [[{}<left>]])

-- restoures selection when indenting
vim.keymap.set([[v]], [[<]], [[<gv]])
vim.keymap.set([[v]], [[>]], [[>gv]])

-- toggle absolute/relative numbering
vim.keymap.set([[n]], [[<f1>]], [[:set rnu!<cr>]])

-- toggle spell check
vim.keymap.set([[n]], [[<f2>]], [[:set spell!<cr>]])

-- toggle line break
vim.keymap.set([[n]], [[<f3>]], [[:set wrap!<cr>]])

-- open terminal
vim.keymap.set([[n]], [[<f4>]], [[:vert :term<cr>]])

-- toggle invisible characters
vim.keymap.set([[n]], [[<f5>]], [[:set list!<cr>]])

-- display file estatics
vim.keymap.set([[n]], [[<f6>]], [[g<c-g>]])
vim.keymap.set([[i]], [[<f6>]], [[<c-o>g<c-g>]])

-- free selection
-- vim.keymap.set([[n]], [[<f7>]], function()
--     local current = vim.wo.virtualedit
--     if current == 'all' then
--         vim.wo.virtualedit = ''
--     else
--         vim.wo.virtualedit = 'all'
--     end
-- end)
vim.keymap.set([[n]], [[<f7>]],
[[:execute "set virtualedit=" . (&virtualedit == "all" ? "" : "all")<CR>]])

-- highlight search
vim.keymap.set([[n]], [[<leader>hh]], [[:set hls!<cr>]], {silent = true})
vim.keymap.set([[n]], [[<leader>hc]], [[:let @/ = ""<cr>]], {silent = true})

-- save only if there are changes
vim.keymap.set([[n]], [[<leader>fs]], [[:update<cr>]])

-- buffer
-- vim.keymap.set([[n]], [[<leader>bk]], [[:bd<cr>]])
-- vim.keymap.set([[n]], [[<leader>bN]], [[:enew<cr>]])
-- vim.keymap.set([[n]], "<leader>b[", [[:bp<cr>]])
-- vim.keymap.set([[n]], "<leader>b]", [[:bn<cr>]])

-- tabs
-- vim.keymap.set([[n]], [[<leader>ta]], [[:tab ball<cr>]])
-- vim.keymap.set([[n]], [[<leader>to]], [[:tabonly<cr>]])
-- vim.keymap.set([[n]], [[<leader><Tab>n]], [[:tabnew<cr>]])

-- file explore
vim.keymap.set([[n]], [[<leader>\]], [[:30Lex<cr>]])

-- paste last copy instead of last cut
-- vim.keymap.set([[n]], [[<leader>p]], [["0p]])
-- vim.keymap.set([[n]], [[<leader>P]], [["0P]])

--
-- make transparent
vim.keymap.set([[n]], [[<leader>']], 
   [[:highlight Normal ctermbg=NONE guibg=NONE<cr>]], {silent = true})
