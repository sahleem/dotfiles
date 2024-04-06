local builtin = require('telescope.builtin')
map("n", "ff", builtin.find_files, {}) -- search file name
map("n", "fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end) -- search file with string
