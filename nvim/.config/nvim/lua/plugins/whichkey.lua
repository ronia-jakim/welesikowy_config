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
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },

      -- FUZZY FINDER
      { "<leader>f", group = "fuzzy finder", icon={icon = "󰱼", color = "azure" } },

      { "<leader>ff", 
        function() 
          Snacks.picker.smart() 
        end, 
        desc = "search files in current directory",
        icon={ icon = "󰱼", color = "azure" } 
      },

      { 
        "<leader>f/", 
        function() 
          Snacks.picker.grep() 
        end, 
        desc = "search in current file", 
        icon={ icon = "󰍉", color = "azure" } 
      },
     { 
       "<leader>fg", 
       function() 
         Snacks.picker.git_grep() 
       end, 
       desc = "search files in git repository", 
       icon = {
         icon = "󰊢", 
         color = "red" 
       }
     },

      -- ERROR HANDLING
      {
        "<leader>d", 
        function() 
          vim.diagnostic.open_float() 
        end, 
        desc = "show diagnostics",
        icon = {
          icon = "", 
          color = "purple"
        }
      },
      {
        "<leader>l", 
        function() 
          vim.lsp.buf.code_action() 
        end, 
        desc = "simple code repair",
        icon = {
          icon = "", 
          color = "grey" 
        }
      },

      -- NEOTREE
      {
        "<C-m>", 
        function() 
          vim.cmd [[ :Neotree toggle ]] 
        end, 
        desc = "toggle Neotree"
      },

      -- SEARCH BOX
      { "<leader>s", group = "search box", icon="󰍉" },

      {
        "<leader>ss", 
        function() 
          vim.cmd [[ :SearchBoxIncSearch ]]
        end, 
        desc = "search box",
        icon = "󰍉"
      },
      {
        "<leader>sr", 
        function() 
          vim.cmd [[ :SearchBoxReplace ]]
        end, 
        desc = "search and replace box",
        icon = ""
      },

      -- DUCK AND CAT
      { "<leader>k", group = "kaczuszki i kotki", icon={ icon = "󰇥 ", color = "yellow" } },

      {
        "<leader>kd",
        function()
          require("duck").hatch("🦆", 10)
        end,
        desc = "kaczka dziwaczka",
        icon = { icon = "󰇥", color = "green" }
      },
      {
        "<leader>kc",
        function()
          require("duck").hatch("🐈", 3)
        end,
        desc = "kycia jest gruba", 
        icon = { icon = "", color = "yellow" }
      },
    
    })
  end,
}
