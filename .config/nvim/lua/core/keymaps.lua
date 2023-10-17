vim.g.mapleader = " "

local map = vim.keymap.set

-- file
map('n', '<leader>fn', ':enew<CR>', { desc = 'New File' })

-- save
map('n', '<leader>w', ':w!<CR>', { desc = 'Save' })

-- newname
map('n', '<leader>rr', ':f ', { desc = 'Rename current buffer' })
map('n', '<leader>rd', ':!rm ', { desc = 'Delete target file' })
map('n', '<leader>rs', ':saveas ', { desc = 'Save as...' })

-- quit
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

-- search
map('n', '<leader>/', ':noh<CR>', { desc = 'Clear search' })

-- wrap
map('n', '<leader>hh', ':set wrap<CR>', { desc = 'Wrap on' })
map('n', '<leader>hn', ':set nowrap<CR>', { desc = 'Wrap off' })

-- windows
map('n', '<leader>-', ':sp | Telescope find_files<CR>', { desc = 'Split window below' })
map('n', '<leader>|', ':vsp | Telescope find_files<CR>', { desc = 'Split window right' })
map('n', '<leader>cw', ':close<CR>', { desc = 'Close current window' })
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
map('n', '<A-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
map('n', '<A-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
map('n', '<A-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
map('n', '<A-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

-- buffers
map('n', '<leader><Tab>', ':bn<CR>', { desc = 'Switch buffer' })
map('n', '<leader>cb', ':bp | bd #<CR>', { desc = 'Delete buffer' })
map('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffer' })

-- lazy
map('n', '<leader>l', ':Lazy<CR>', { desc = 'Lazy' })

-- mason
map('n', '<leader>m', ':Mason<CR>', { desc = 'Mason' })

-- neo-tree
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Neo-tree' })

-- lspinfo
map('n', '<leader>i', ':LspInfo<CR>', { desc = 'LspInfo' })

-- alpha-nvim
map('n', '<leader>a', ':Alpha<CR>', { desc = 'Back to home' })

-- terminal
map('n', '<leader>tt', ':term<CR>', { desc = 'Open Terminal' })

-- tabs
map('n', '<leader>tn', '<cmd>tabnew<CR>', { desc = 'New tab' })
map('n', '<leader>ct', '<cmd>tabclose<CR>', { desc = 'Close tab' })
map('n', '<leader>t<Tab>', '<cmd>tabnext<CR>', { desc = 'Switch tab' })

-- which-key 
local wk = require("which-key")
wk.register({
    ["<leader>b"] = { name = "+Buffer" },
    ["<leader>f"] = { name = "+File" },
    ["<leader>t"] = { name = "+Tab" },
    ["<leader>h"] = { name = "+Wrap" },
    ["<leader>c"] = { name = "+Close" },
    ["<leader>r"] = { name = "+Rename" }
})
