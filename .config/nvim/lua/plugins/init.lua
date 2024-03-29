return {
    {"github/copilot.vim"},
    {"editorconfig/editorconfig-vim"},
    { 'nvim-telescope/telescope-fzf-native.nvim', 
	build = 'make' 
    },
    {"luukvbaal/nnn.nvim",
	init = function() require("nnn").setup() end
    },
    {"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = true,
	keys = { -- load the plugin only when using it's keybinding:
	    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	},
    },
}
