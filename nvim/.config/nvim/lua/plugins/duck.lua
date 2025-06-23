return {
  'tamton-aquib/duck.nvim',
  config = function()
    -- vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦆", 10) end, {}) -- A pretty fast duck
    -- vim.keymap.set('n', '<leader>dc', function() require("duck").hatch("🐈", 3) end, {}) -- Quite a mellow cat
  end,
  keys = {
    {
      "<leader>dd",
      function()
        require("duck").hatch("🦆", 10)
      end,
      desc = "kaczka dziwaczka",
    },
    {
      "<leader>dc",
      function()
        require("duck").hatch("🐈", 3)
      end,
      desc = "kycia jest gruba",
    },
  },

}
