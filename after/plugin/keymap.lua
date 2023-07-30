-- CUSTOM KEYMAPS
-- Spellcheck
vim.keymap.set('n', '<leader>sy', ':setlocal spell<cr>', { silent = true, desc = 'Turn on spellcheck' })
vim.keymap.set('n', '<leader>sn', ':set nospell<cr>', { silent = true, desc = 'Turn off spellcheck' })

-- Opening and closing terminals
vim.keymap.set('n', '<leader>ot', ':15 sp <cr> :term pwsh <cr>i', { silent = true, desc = 'Open pwsh Terminal' })
vim.keymap.set('t', '<c-q>', '<c-\\><c-n> :q <cr>', { silent = true, desc = 'Close terminal' })

-- Running code
vim.keymap.set('n', '<leader>rp', ":15 sp <cr> :term pwsh <cr>ipython " .. vim.api.nvim_buf_get_name(0) .. "<cr>",
  { silent = true, desc = '[R]un [P]ython' })
vim.keymap.set('n', '<leader>rl', ":15 sp <cr> :term pwsh <cr>ilua " .. vim.api.nvim_buf_get_name(0) .. "<cr>",
  { silent = true, desc = '[R]un [L]ua' })

-- Cargo commands on demand
vim.keymap.set('n', '<leader>cr', ':15 sp <cr> :term pwsh <cr> icargo run <cr>',
  { silent = true, desc = 'Execute cargo run in' })
vim.keymap.set('n', '<leader>ct', ':15sp <cr> :term pwsh <cr> icargo test <cr>',
  { silent = true, desc = 'Execute cargo test in' })
vim.keymap.set('n', '<leader>crr', ':15sp <cr> :term pwsh <cr> icargo run --release <cr>',
  { silent = true, desc = 'Execute cargo run release' })
vim.keymap.set('n', '<leader>cb', ':15sp <cr> :term pwsh <cr> icargo build <cr>',
  { silent = true, desc = 'Execute cargo build' })
vim.keymap.set('n', '<leader>cbr', ':15sp <cr> :term pwsh <cr> icargo build --release <cr>',
  { silent = true, desc = 'Execute cargo build release' })

-- Navigating splits more easily
vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { silent = true })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { silent = true })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { silent = true })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { silent = true })

-- Navigating tabs more easily
vim.keymap.set('n', '<leader>tn', ':tabnew <cr>', { silent = true, desc = 'New tab' })
vim.keymap.set('n', '<leader>tc', ':tabclose <cr>', { silent = true, desc = 'Close tab' })
vim.keymap.set('n', '<leader>tl', ':tabnext <cr>', { silent = true, desc = 'Next tab' })
vim.keymap.set('n', '<leader>th', ':tabprevious <cr>', { silent = true, desc = 'Previous tab' })

-- Navigating half screens
vim.keymap.set('n', '<c-d>', '<c-d>zz', { silent = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { silent = true })

-- Neotree
vim.keymap.set('n', '<leader>ft', ':Neotree <cr>', { silent = true, desc = 'Open Neotree filetree' })
