local os = vim.loop.os_uname().sysname
local termcommand = ':term pwsh <cr>i'
local termsplit = ':botright :15 split <cr>'
-- CUSTOM KEYMAPS
-- Spellcheck
vim.keymap.set('n', '<leader>sy', ':setlocal spell<cr>', { silent = true, desc = '[S]pellcheck [Y]es' })
vim.keymap.set('n', '<leader>sn', ':set nospell<cr>', { silent = true, desc = '[S]spellcheck [N]o' })

if os == "Linux" then
  termcommand = ':term zsh <cr> i clear <cr>'
end

-- Opening and closing terminals
vim.keymap.set('n', '<leader>ot', termsplit .. termcommand, { silent = true, desc = 'Open pwsh Terminal' })
vim.keymap.set('t', '<c-q>', '<c-\\><c-n> :q <cr>', { silent = true, desc = 'Close terminal' })

-- Cargo commands on demand
vim.keymap.set('n', '<leader>cr', termsplit .. termcommand .. 'cargo run <cr>',
  { silent = true, desc = 'Execute cargo run' })
vim.keymap.set('n', '<leader>ct', termsplit .. termcommand .. 'cargo test <cr>',
  { silent = true, desc = 'Execute cargo test' })
vim.keymap.set('n', '<leader>crr', termsplit .. termcommand .. 'cargo run --release <cr>',
  { silent = true, desc = 'Execute cargo run release' })
vim.keymap.set('n', '<leader>cb', termsplit .. termcommand .. 'cargo build <cr>',
  { silent = true, desc = 'Execute cargo build' })
vim.keymap.set('n', '<leader>cbr', termsplit .. termcommand .. 'cargo build --release <cr>',
  { silent = true, desc = 'Execute cargo build release' })

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

-- Search and replace
vim.keymap.set('n', '<leader>sr', ':SearchReplace <cr>', { silent = true, desc = '[S]earch and [R]eplace.' })

-- Run code
vim.keymap.set('n', '<leader>rc', ':RunCode <cr>', { silent = true, desc = '[R]un [C]ode' })

-- Window resizig
vim.keymap.set('n', '<a-h>', ':vert :res +5<cr>', { silent = true, desc = 'Decrease width' })
vim.keymap.set('n', '<a-k>', ':res -5<cr>', { silent = true, desc = 'Increase height' })
vim.keymap.set('n', '<a-j>', ':res +5<cr>', { silent = true, desc = 'Decrease height' })
vim.keymap.set('n', '<a-l>', ':vert :res -5<cr>', { silent = true, desc = 'Increase width' })
