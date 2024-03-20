local on_attach = require("plugins.custom").on_attach
local capabilities = require("plugins.custom").capabilities

local options = {
	server = {
		on_attach = on_attach,
		capabilities = capabilities,
	},
}

return options
