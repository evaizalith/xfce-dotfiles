vim.opt.clipboard = 'unnamedplus' 	-- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'			-- allows mouse use in nvim

-- Tab
vim.opt.tabstop = 4			-- visual spaces per tab
vim.opt.softtabstop = 4			-- number of spaces in tab while editing
vim.opt.shiftwidth = 4			-- inserts 4 spaces on tab
vim.opt.expandtab = true		-- tabs are spaces for the sake of Python

-- UI
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
