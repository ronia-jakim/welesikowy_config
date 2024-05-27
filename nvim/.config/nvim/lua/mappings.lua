vim.cmd([[
  map :W :w
  map :X :x
  map :Q :q

  imap <C-BS> <C-W>

  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk
  nnoremap <Down> gj
  nnoremap <Up> gk
  vnoremap <Down> gj
  vnoremap <Up> gk
  inoremap <Down> <C-o>gj
  inoremap <Up> <C-o>gk
]]
)


local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
