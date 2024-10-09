return {
	"nvim-telescope/telescope.nvim",
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>ft', builtin.builtin, {})
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fG', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fcb', builtin.current_buffer_fuzzy_find, {})
	end
}
