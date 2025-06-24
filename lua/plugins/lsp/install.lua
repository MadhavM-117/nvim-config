return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		-- only lsp servers go here
		ensure_installed = {
			-- docker
			"dockerls",
			"docker_compose_language_service",

			-- lua
			"lua_ls",

			-- python
			"basedpyright",

			-- rust
			"rust_analyzer",

			-- styling
			"cssls",
			"stylelint_lsp",
			"tailwindcss",

			-- web dev
			"eslint",
			"html",
			"prismals",
			"ts_ls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
	},
}
