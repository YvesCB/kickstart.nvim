-- [[ Setting options ]]
-- See `:help vim.o`

-- CUSTOM SETTINGS:
vim.o.relativenumber = true
vim.o.winbar = '%f'
vim.o.splitbelow = true
vim.o.splitright = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- CUSTOM KEYMAPS
-- Spellcheck
vim.keymap.set('n', '<leader>sy', ':setlocal spell<cr>', { silent = true, desc = 'Turn on spellcheck' })
vim.keymap.set('n', '<leader>sn', ':set nospell<cr>', { silent = true, desc = 'Turn off spellcheck' })

-- Opening and closing terminals
vim.keymap.set('n', '<leader>co', ':sp <cr> :term pwsh <cr>i', { silent = true, desc = 'Open pwsh Terminal' })
vim.keymap.set('t', '<c-q>', '<c-\\><c-n> :q <cr>', { silent = true, desc = 'Close terminal' })

-- Running code
vim.keymap.set('n', '<leader>rp', ":update <cr> :exec '!python' shellescape(@%, 1) <cr>",
  { silent = true, desc = 'Run Python' })

-- Cargo commands on demand
vim.keymap.set('n', '<leader>cr', ':sp <cr> :term pwsh <cr> i cargo run <cr>',
  { silent = true, desc = 'Execute cargo run in' })
vim.keymap.set('n', '<leader>ct', ':sp <cr> :term pwsh <cr> i cargo test <cr>',
  { silent = true, desc = 'Execute cargo test in' })
vim.keymap.set('n', '<leader>crr', ':sp <cr> :term pwsh <cr> i cargo run --release <cr>',
  { silent = true, desc = 'Execute cargo run release' })
vim.keymap.set('n', '<leader>cb', ':sp <cr> :term pwsh <cr> i cargo build <cr>',
  { silent = true, desc = 'Execute cargo build' })
vim.keymap.set('n', '<leader>cbr', ':sp <cr> :term pwsh <cr> i cargo build --release <cr>',
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

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
