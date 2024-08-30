require("tdg.set")
require("tdg.remap")
require("tdg.lazy_init")

LSP_GROUP = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true})
 -- FMT_GROUP = vim.api.nvim_create_augroup('format_group', {clear = true})

vim.api.nvim_create_autocmd('LspAttach', {
	group = LSP_GROUP,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
		vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
		vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
		vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts)
		vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
		vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
		vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
		vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
		vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
		vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	end
})

 -- vim.api.nvim_create_autocmd('FormatOnSave', {
 -- 	group = FMT_GROUP,
 -- 	callback = function(e)
 -- 	end
 -- })
