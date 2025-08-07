-- return {
--   'brenoprata10/nvim-highlight-colors',
--   config = function()
--     require('nvim-highlight-colors').setup({})
--   end
-- }

return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      user_default_options = {
        mode = 'virtualtext', 
        css = true, 
        tailwind = 'both',
        tailwind_opts = {
          update_names = true
        }
      }
    },
}
