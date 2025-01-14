map = vim.keymap.set

-- write and quit
--map('n', 'q', ':q<CR>', {})
--map('n', 'w', ':w<CR>', {})

-- file tree
--map("n", "<leader>b", vim.cmd.Ex)
map("n", "<leader>b", vim.cmd.NvimTreeToggle)

-- clipboard attempt (not working)
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")

-- split
map('n', 'sh', ':sp<CR>')
map('n', 'sv', ':vsp<CR>')
map('n', '<C-k>', ':wincmd k<CR>')
map('n', '<C-j>', ':wincmd j<CR>')
map('n', '<C-l>', ':wincmd l<CR>')
map('n', '<C-h>', ':wincmd h<CR>')

-- move line
map('n', '<C-A-j>', ':m .+1<CR>==')
map('n', '<C-A-k>', ':m .-2<CR>==')
map('i', '<C-A-j>', '<Esc>:m .+1<CR>==gi')
map('i', '<C-A-k>', '<Esc>:m .-2<CR>==gi')
map('v', '<C-A-j>', ":m '>+1<CR>gv=gv")
map('v', '<C-A-k>', ":m '<-2<CR>gv=gv")

-- terminal
map("n", "<leader>t", ":sp | terminal<CR>")

-- fugitive
map("n", "<leader>gs", vim.cmd.Git)

-- undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle)
