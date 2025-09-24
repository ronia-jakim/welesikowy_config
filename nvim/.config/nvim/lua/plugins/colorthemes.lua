return {
	'neanias/everforest-nvim',
	lazy = false,
    	priority = 1000,
	config = function()
	    vim.cmd.colorscheme 'everforest'
      local handle = io.popen("~/welesikowy_config/scripts/light-or-dark.sh")
      if handle == nil then
        print("could not execute light-or-dark.sh")
        return
      end
      local result = handle:read("*a")
      handle:close()

      if string.find(result, "dark") then
        vim.o.background = "dark"
      else
        vim.o.background = "light"
      end
	end
}
