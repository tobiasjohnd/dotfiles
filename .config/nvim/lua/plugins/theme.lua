return {
    {
	"Shatur/neovim-ayu",
	config = function()
	    local ayu = require("ayu")
	    ayu.setup({
		mirage =  false,
		overides = {},
	    })
	    ayu.colorscheme()
	end
    },
}
