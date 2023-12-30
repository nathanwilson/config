return {
    "akinsho/toggleterm.nvim",
    verison = "*",
    opts = {

    },
    config = function ()
	local toggleterm = require("toggleterm")

	toggleterm.setup({
	    open_mapping = [[<C-\>]],
	    direction = "float",
	    float_optts = {
              border = 'curved',
	    },
	})

    	local wk = require("which-key")
        wk.register({
          ["<leader>t"] = {
	    name = "+terminal",
          },
        })

	-- set keymaps
        local keymap = vim.keymap -- for conciseness

	keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Show/hide the floating terminal" })
    end
}
