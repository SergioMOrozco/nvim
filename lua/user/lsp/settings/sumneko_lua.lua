return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" }, --make lua know about vim commands
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
