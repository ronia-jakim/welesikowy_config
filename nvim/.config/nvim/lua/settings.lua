vim.cmd([[
  autocmd FileType tex setlocal spell spelllang=en_us,pl

  filetype on
  filetype plugin on
  highlight Normal ctermbg=Black
  highlight NonText ctermbg=Black
]])

local options ={
  backup = false,
  clipboard = 'unnamedplus',
  ignorecase = true,
  fileencoding = "utf-8",

  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = false,

  signcolumn = "yes",
  wrap = true,
  linebreak = true,
  scrolloff = 3,
  whichwrap = "bs<>[]hl",

  termguicolors = true,
  showtabline = 2,                         -- always show tabs
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

	

