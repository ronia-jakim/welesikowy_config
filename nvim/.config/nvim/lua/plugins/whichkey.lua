return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

  },
  config = function()
    vim.keymap.set({'n', '<leader>d', vim.diagnostic.open_float, {desc= 'diagnostisc'}})
    vim.keymap.set({'n', '<leader>la', vim.lsp.buf.code_action, {desc= 'code action'}})
    require("which-key").add({
      { "<leader>d", group = "kaczuszki i kotki" },
    })
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
