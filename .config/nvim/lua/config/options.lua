-- OPTIONS

-- TERMINAL COLOR DEFINITION
vim.opt.tgc = true
-- -----------------------------------------------------------------------------

-- GENERAL SETTINGS
--vim.cmd.ft  "plugin indent on"
vim.cmd.syn "on"
vim.opt.title = true
-- vim.opt.eb = false
vim.opt.cf    = true
vim.opt.hid   = true
vim.opt.sb    = true
vim.opt.spr   = true
vim.opt.fcs   = {vert = "│",fold = "-",eob = "~",lastline = "@"}
vim.opt.mouse = ""
-- -----------------------------------------------------------------------------

-- PATHS
vim.opt.pa:append("**")
vim.opt.swf  = false
vim.opt.bk   = false
-- vim.opt.udir = "undodir"
vim.opt.udf  = true
-- -----------------------------------------------------------------------------

-- LINE NUMBERING
vim.opt.nu  = true
vim.opt.rnu = true
--vim.opt.so = 4
vim.opt.cul = true
-- -----------------------------------------------------------------------------

-- CURSOR CHANGE
-- let &t_SI=--\e[6 q"
-- let &t_EI=--\e[2 q"
-- -----------------------------------------------------------------------------

-- INDENTATION
vim.opt.ai = true
vim.opt.si = true
-- -----------------------------------------------------------------------------

-- TABULATION
vim.opt.et  = true
vim.opt.ts  = 3
vim.opt.sts = 0
vim.opt.sw  = 3
-- -----------------------------------------------------------------------------

-- SEARCH
vim.opt.ic  = true
vim.opt.scs = true
vim.opt.is  = true
vim.opt.hls = true
-- let @/ = --"
-- -----------------------------------------------------------------------------

-- STATUS BAR MENU
vim.opt.wmnu = true
vim.opt.wim  = "longest,full"
vim.opt.wop  = "pum"
-- -----------------------------------------------------------------------------

-- STATUS BAR
vim.opt.showmode = true
vim.opt.ls = 2
-- -----------------------------------------------------------------------------

-- LINE BREAK
vim.opt.wrap = false
vim.opt.lbr  = true
-- -----------------------------------------------------------------------------

-- FOLDING
-- vim.opt.foldmethod = "market"
-- -----------------------------------------------------------------------------

-- FILLER CHARACTERS
vim.opt.list = false
vim.opt.lcs  = {tab = "›-",space = "·",trail = "◀",eol = "↲"}
-- -----------------------------------------------------------------------------

-- SPELLING
vim.opt.spl   = "en"
-- vim.opt.spl   = "pt,en"
vim.opt.spell = false
-- -----------------------------------------------------------------------------

-- MENU IN INSERT MODE
vim.opt.cpt:append("kspell")
vim.opt.cot = "menuone,longest"
-- vim.opt.shm:append("c")
-- -----------------------------------------------------------------------------

-- COLORSCHEME
vim.opt.bg = "dark"
vim.cmd.colo "catppuccin"
--highlight Normal guibg=none
--highlight NonText guibg=none
--highlight Normal ctermbg=none
--highlight NonText ctermbg=none
-- highlight Normal ctermbg=NONE guibg=NONE
-- -----------------------------------------------------------------------------

-- DELAY CORRECTION
vim.opt.tm  = 1000 
vim.opt.ttm = 0
-- -----------------------------------------------------------------------------

-- FORMATTING
vim.opt.tw = 80 
