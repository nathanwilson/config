return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function ()
        local telescope = require("telescope")

        telescope.load_extension("file_browser")


        -- set keymaps
        local keymap = vim.keymap -- for conciseness

	keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { desc = "Browse files" })
    end
}
