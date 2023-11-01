local function run_code_in_term()
    local filetype = vim.bo.filetype
    local enter_key = vim.api.nvim_replace_termcodes('<CR>', true, false, true)
    local exit_term_mode = vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, false, true)


    -- This opens the terminal and returns the bufnr of the opened buffer
    local function run_code(command)
        if vim.loop.os_uname().sysname == "Linux" then
            vim.cmd([[
                bo 15 sp
                terminal zsh
            ]])
        elseif vim.loop.os_uname().sysname == "Windows_NT" then
            vim.cmd([[
                bo 15 sp
                terminal pwsh
            ]])
        end
        vim.api.nvim_feedkeys('i' .. 'clear' .. enter_key, 'n', true)
        vim.api.nvim_feedkeys(command .. enter_key, 'n', true)
        vim.api.nvim_feedkeys(exit_term_mode, 'n', true)
        vim.api.nvim_feedkeys('G', 'n', true)
    end

    if filetype == 'python' then
        run_code('python ' .. vim.api.nvim_buf_get_name(0))
    elseif filetype == 'lua' then
        run_code('lua ' .. vim.api.nvim_buf_get_name(0))
    elseif filetype == 'rust' then
        run_code('cargo run')
    else
        print("Unsuportet language: " .. filetype)
    end
end

vim.api.nvim_create_user_command('RunCode', run_code_in_term, { desc = "Runs the current buffer." })
