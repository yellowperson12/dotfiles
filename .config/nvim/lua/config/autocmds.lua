-- REMOVE NUMBERING AT THE TERMINAL
vim.api.nvim_create_autocmd("TermOpen", {
   pattern = "*",
   callback = function()
      vim.opt.nu = false
      vim.opt.rnu = false
   end,})
--------------------------------------

-- BUFFER IN C
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.c", "*.h", "Makefile"},
   callback = function()
      vim.opt.shiftwidth = 8
      vim.opt.tabstop = 8
      vim.opt.softtabstop = 8
      vim.opt.expandtab = false
   end
})
--------------------------------------

-- BUFFER IN C++
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.cpp", "*.hpp"},
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.expandtab = true
   end
})
--------------------------------------

-- BUFFER IN GO
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.go"},
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
      vim.opt.expandtab = false
   end
})
--------------------------------------

-- BUFFER IN HASKELL
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.hs"},
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.expandtab = true
   end
})
--------------------------------------

-- BUFFER IN HTML
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.html"},
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.expandtab = true
      vim.opt.textwidth = 100
      vim.cmd([[iabbrev <buffer> ! <!DOCTYPE html><CR><html lang="pt-BR"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title></title><CR></head><CR><body><CR><CR></body><CR></html><Up><Up><Up><Up><Up><Up><Up><Up><Up><Up><Up><Right><Right><Right><Right><Right><Right><Right>]])
  end
})
--------------------------------------

-- BUFFER IN JAVA
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.java" },
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
   end
})
--------------------------------------

-- BUFFER IN JAVASCRIPT
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.js"},
   callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.expandtab = true
      vim.opt.textwidth = 100
  end
})
--------------------------------------

-- BUFFER IN LUA
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.lua"},
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
      vim.opt.expandtab = true
   end
})
--------------------------------------

-- BUFFER IN PYTHON
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.py"},
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
      vim.opt.expandtab = false
   end
})
--------------------------------------
