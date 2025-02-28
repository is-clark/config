local keymap = vim.keymap
keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("x", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- appending line below to current line and keep cursor where it is
keymap.set("n", "J", "mzJ`z")

-- keep view on cursor in the middle when jumping half pages or seaching
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- deleting to void (and pasting)
keymap.set('x', '<leader>p', '\"_dP')
keymap.set('n', '<leader>d', '\"_d')
keymap.set('v', '<leader>d', '\"_d')

-- yank to system clipboard
keymap.set('n', '<leader>y', '\"+y')
keymap.set('v', '<leader>y', '\"+y')
keymap.set('n', '<leader>Y', '\"+Y')

-- clear search by pressing escape
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
    callback = function ()
        vim.highlight.on_yank()
    end,
})

-- diagnostics
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)
keymap.set('n', '<leader>e', vim.diagnostic.open_float)
keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Telescope
keymap.set('n', '<leader>pf', '<cmd>Telescope find_files<cr>', {desc = 'Telescope find files'})

-- Undotree
keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
