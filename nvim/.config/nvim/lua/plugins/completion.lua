return {
  'hrsh7th/nvim-cmp',
  dependencies = {
     'neovim/nvim-lspconfig' ,-- Collection of configurations for built-in LSP client
     'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
     'L3MON4D3/LuaSnip', -- Snippets plugin
    -- cmp sources 
     'saadparwaiz1/cmp_luasnip',
     'hrsh7th/cmp-buffer'  ,
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'hrsh7th/cmp-nvim-lua',
    'brenoprata10/nvim-highlight-colors'
     -- 'nanotee/sqls.nvim'

  },
  config = function()

    -- Add additional capabilities supported by nvim-cmp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require('lspconfig')
    -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
    local servers = { 'clangd', 'pyright', 'texlab', 'julials', 'lua_ls', 'csharp_ls', 'ts_ls', } -- 'ltex_plus' }
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
      }
    end

    require'lspconfig'.julials.setup{}

    -- require('lspconfig').sqls.setup{
    --     on_attach = function(client, bufnr)
    --         require('sqls').on_attach(client, bufnr)
    --     end
    -- }



    -- luasnip setup
    local luasnip = require 'luasnip'

    -- nvim-cmp setup
    --
    --if vim.bo.filetype ~= "tex" then
    local cmp = require 'cmp'
    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
        ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
        -- C-b (back) C-f (forward) for snippet placeholder navigation.
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        {name = 'buffer', keyword_length = 12},
        -- { name = 'path' },
        --{ name = 'nvim_lua' },
      },
      formatting = {
                format = require("nvim-highlight-colors").format
        }
    }
    --iend






  end,






}
