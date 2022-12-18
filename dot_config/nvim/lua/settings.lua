-- using lua https://www.notonlycode.org/neovim-lua-config/
vim.g.mapleader=" "
vim.g.maplocalleader=" "

vim.opt.number=true       --line numbers
vim.opt.relativenumber=true
vim.opt.smartindent=true  --indent based on filetype
vim.opt.expandtab=true    --tab to spaces
vim.opt.tabstop=2         --the width of a tab
vim.opt.shiftwidth=2      --the width for indent
vim.opt.ignorecase=true   --ignore he case when searching
vim.opt.smartcase=true    --revert ignore case if search contains uppercase
vim.opt.history=1000
vim.opt.ruler=true        --show cursor position all of the time
vim.opt.scrolloff=3       --3 lines before and after the current line
vim.opt.mouse="v"         --Allow middle click paste https://github.com/neovim/neovim/issues/2468#issuecomment-236464848

-- Change to directory of current file automatically
vim.api.nvim_create_autocmd(
    { "BufEnter", "BufRead", "BufNewFile","BufFilePost" },
    { pattern = { "*" }, command = "silent! lcd %:p:h" }
)

-- Enable spell checker on certain files
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)
