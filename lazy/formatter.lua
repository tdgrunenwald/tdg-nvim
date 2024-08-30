return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup {
			filetype = {
				c = {
					require("formatter.filetypes.c").clangformat,
				}
			}
		}
	end
}
