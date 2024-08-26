return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "cpp", "bash", "kconfig", "lua", "vimdoc", "python", "markdown", "markdown_inline", "linkerscript" },

			-- Only applies to `ensure_installed`
			sync_install = false,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			indent = {
				enable = true,
			},
		})
	end,
}
