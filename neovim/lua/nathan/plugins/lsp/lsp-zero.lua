return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        "neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
	-- mason
	"williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function ()
        local lsp_zero = require("lsp-zero")

	lsp_zero.on_attach(function(client, bufnr)
  	    -- see :help lsp-zero-keybindings
  	    -- to learn the available actions
  	    lsp_zero.default_keymaps({buffer = bufnr})
        end)

	local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "",
                    package_pending = "",
                    package_uninstalled = "",
                },
            }
        })

        mason_lspconfig.setup({
      	    -- list of servers for mason to install
            ensure_installed = {
		"rust_analyzer",
		"tsserver",
		"terraformls",
		"hydra_lsp", -- yaml
		"jsonls",
      	    },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed

	    handlers = {
                lsp_zero.default_setup,
		rust_analyzer = function ()
                    require("lspconfig").rust_analyzer.setup({
                        settings = {
                            completions = {
                                completeFunctionCalls = true,
			    }
			}
		    })
		end
	    }
        })

	mason_tool_installer.setup({
            ensure_installed = {
		"rustfmt",
                "cfn-lint",
		"eslint_d",
		"prettier",
		"tflint",
      	    },
       })
    end
}
