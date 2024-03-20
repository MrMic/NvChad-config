local configs = require("nvchad.configs.lspconfig")

-- local on_attach = configs.on_attach
-- local on_init = configs.on_init
-- local capabilities = configs.capabilities

-- local lspconfig = require("lspconfig")
-- local util = require("lspconfig/util")

local servers = {
	html = {},
	cssls = {},
	tsserver = {},
	tailwindcss = {},
	emmet_language_server = {},
	eslint = {},
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {},
			checkOnSave = {
				command = "clippy",
				allFeatures = true,
				extraArgs = {
					"--no-deps",
				},
			},
		},
	},
}

for name, opts in pairs(servers) do
	opts.on_init = configs.on_init
	opts.on_attach = configs.on_attach
	opts.capabilities = configs.capabilities

	require("lspconfig")[name].setup(opts)
end

-- Without the loop, you would have to manually set up each LSP
--
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
