-- Base Layer
vim.api.nvim_set_hl(0, 'Normal', {fg='#dc6f8f', bg='#0d0d1b', bold=false})
vim.api.nvim_set_hl(0, 'EndOfBuffer', {fg='#b3879f', bg='#0d0d1b', bold=false})

-- Terminal Cursor
vim.api.nvim_set_hl(0, 'TermCursor', {fg='#ffffff', bold=false})

-- Line numbers
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#b3879f', bold=true})
vim.api.nvim_set_hl(0, 'LineNr', {fg='#b3879f', bold=true})
vim.api.nvim_set_hl(0, 'LineNrBelow', {fg='#b3879f', bold=true})
vim.api.nvim_set_hl(0, 'CursorLineNr', {fg='#789aba', bold=true})

-- Warnings and Errors
vim.api.nvim_set_hl(0, 'WarningMsg', {fg='#ca1444', bold=true})

--local colorscheme = 'dracula'

--local is_ok, _ = pcall(vim.cmd, "colorscheme" .. colorscheme)
--if not is_ok then
--    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
--    return
--end
