return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

  },
  config = function()
    require("which-key").add({
      { "<leader>k", group = "kaczuszki i kotki" },
      { "<leader>f", group = "file" }, -- group
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
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
    {
      "<leader>d", 
      function() 
        vim.diagnostic.open_float() 
      end, 
      desc = "show diagnostics"
    },
    {
      "<leader>la", 
      function() 
        vim.lsp.buf.code_action() 
      end, 
      desc = "code action"
    }
  },
}
