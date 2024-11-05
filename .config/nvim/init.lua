require('options')
require('plugins')
require('colorscheme') -- default colorscheme config, only used if Dracula is disabled/broken

vim.g.mapleader = ';'
vim.g.localmapleader = ';'

-- lsp servers
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.pylsp.setup {}
lspconfig.clangd.setup {}
lspconfig.rust_analyzer.setup {}

local cmp = require("cmp")
cmp.setup {}

-- Help
local whichkey = require("which-key").setup()

-- File Explorer
local function treeAttach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

     -- default mappings
    api.config.mappings.default_on_attach(bufnr)

     -- custom mappings
     --vim.keymap.set('n', 't', api.tree.open.edit,        opts('Open'))

end

require("nvim-tree").setup {
    on_attach = treeAttach,
}

-- Dracula theme settings
local dracula = require("dracula")

dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#0d0d1b",
    fg = "#ccccce",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    --yellow = "#F1FA8C",
    yellow = "#b3879f", -- not actually yellow
    --green = "#50fa7b",
    green = "#ca1444", --not actually green
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    --pink = "#FF79C6",
    pink = "#c379ff", --not actually pink
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#44475a", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
  overrides = {
    -- Examples
    -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
    -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
    -- Nothing = {} -- clear highlight of Nothing
  },
})

