vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("colorscheme ydesert")
vim.cmd("syntax enable")

vim.cmd([[
hi NonText ctermbg=none guibg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi SignColumn ctermbg=NONE ctermfg=NONE guibg=NONE
hi Pmenu ctermbg=NONE ctermfg=NONE guibg=NONE
hi FloatBorder ctermbg=NONE ctermfg=NONE guibg=NONE
hi NormalFloat ctermbg=NONE ctermfg=NONE guibg=NONE
hi TabLine ctermbg=None ctermfg=None guibg=None
]])

local opt = vim.opt

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.mouse = "a"
opt.hidden = true -- Required to keep multiple buffers open multiple buffers
opt.wrap = false -- Display long lines as just one line
opt.encoding = "utf-8" --    The encoding displayed
opt.pumheight = 10 --   Makes popup menu smaller
opt.fileencoding = "utf-8" --     The encoding written to file
opt.ruler = true --             Show the cursor position all the time
opt.cmdheight = 4 --  More space for displaying messages
-- opt.iskeyword+=-                     --	 treat dash separated words as a word text object
opt.splitbelow = true --   Horizontal splits will automatically be below
opt.splitright = true --       Vertical splits will automatically be to the right
--opt.t_Co = "256"                         --   Support 256 colors
--opt.conceallevel=0                    -- So that I can see `` in markdown files
opt.tabstop = 2 --  Insert 2 spaces for a tab
opt.shiftwidth = 2 -- Change the number of space characters inserted for indentation
opt.smarttab = true --        Makes tabbing smarter will realize you have 2 vs 4
opt.expandtab = true --        Converts tabs to spaces
opt.smartindent = true --         Makes indenting smart
opt.autoindent = true --        Good auto indent
opt.laststatus = 0 --    Always display the status line
opt.number = true --         Line numbers
opt.cursorline = true --  Enable highlighting of the current line
opt.background = "dark" -- tell vim what the background color looks like
--opt.showtabline=4                    --  Always show tabs
--opt.noshowmode                       --  We don't need to see things like -- INSERT -- anymore
opt.backup = false --        This is recommended by coc
opt.writebackup = false --        This is recommended by coc
opt.updatetime = 300 --    Faster completion
opt.timeoutlen = 500 --    By default timeoutlen is 1000 ms
--opt.formatoptions-=cro               --    Stop newline continution of comments
--opt.clipboard=unnamedplus            --    Copy paste between vim and everything else
opt.autochdir = true --        Your working directory will always be the same as your working directory
--opt.hlsearch
opt.ignorecase = true
--opt.incsearch

opt.relativenumber = true
opt.errorbells = false
opt.visualbell = true
opt.title = true

opt.signcolumn = "yes"

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
