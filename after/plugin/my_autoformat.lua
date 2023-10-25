-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.html" },
  desc = "Auto-format HTML files with prettier after saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd("silent !prettier --write " .. fileName)
  end,
  group = autocmd_group,
})
