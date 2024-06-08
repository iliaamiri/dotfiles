local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local modes = { "n", "v" } -- normal and visual mode

for i in pairs(modes) do
	map(modes[i], "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', opts)
end
