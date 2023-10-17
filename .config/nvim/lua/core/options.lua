local opt = vim.opt

-- number
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- wrap
opt.wrap = false

-- cursorline
opt.cursorline = true

-- mouse
opt.mouse:append("a")

-- clipboard
opt.clipboard:append("unnamedplus")

-- window
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- ui
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd.colorscheme "catppuccin-macchiato"
