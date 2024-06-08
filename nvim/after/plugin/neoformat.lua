-- In order for Neoformat to use a project-local version of Prettier
-- (i.e. to use node_modules/.bin/prettier instead of looking for prettier
-- on $PATH), you must set the neoformat_try_node_exe option.
vim.g.neoformat_try_node_exe = 1

-- To have Neoformat run Prettier on save:
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = {
		"*.js",
		"*.jsx",
		"*.ts",
		"*.tsx",
		"*.lua",
		"*.rs",
		"*.py",
		"*.cs",
		"*.c",
		"*.html",
		"*.css",
	},
	command = "Neoformat",
})
