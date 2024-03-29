return {
    {
	"Shatur/neovim-ayu",
	config = function()
	    local ayu = require("ayu")
	    ayu.setup({
		mirage =  false,
		overides = {
		    Normal = { bg = "None"},
		}
	    })
	    --ayu.colorscheme()
	end
    },
}
