vim.cmd([[
  autocmd FileType tex setlocal spell spelllang=en_us,pl

  filetype on
  filetype plugin on
  " highlight Normal ctermbg=Black
  " highlight NonText ctermbg=Black
  " highlight Normal guibg=#1e1e1e
  " highlight NonText guibg=#1e1e1e
]])

-- Ensure Neovim background is always set after colorscheme loads
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     -- Dark theme
--     if vim.o.background == "dark" then
--       vim.api.nvim_set_hl(0, "Normal",      { bg = "#2d353b" })
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#2d353b" })
--     -- Light theme
--     else
--       vim.api.nvim_set_hl(0, "Normal",      { bg = "#fdf6e3" })
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#fdf6e3" })
--     end
--   end,
-- })

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

	

