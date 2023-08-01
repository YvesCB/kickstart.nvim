local function highlight_replace_word(replace_word)
    -- Clear any existing search highlighting
    vim.cmd("match none")

    -- Highlight occurrences of replace_word in the current buffer
    vim.cmd("match Search /" .. vim.fn.escape(replace_word, "/\\") .. "/")
end

local function replace_prompt()
    -- Get the word to be replaced from the user
    local replace_word = vim.fn.input("Enter word to replace: ")

    -- Check if the user entered a word
    if not replace_word or replace_word == "" then
        print("No word entered. Aborting.")
        vim.cmd("match none")
        return
    end

    -- Highlight occurrences of replace_word in the current buffer
    highlight_replace_word(replace_word)

    -- Redraw the screen to update the highlighting after each input character
    vim.cmd("redraw")

    -- Get the replacement word from the user
    local replace_with = vim.fn.input("Enter replacement word: ")

    -- Check if the user entered a replacement word
    if not replace_with or replace_with == "" then
        print("No replacement word entered. Aborting.")
        vim.cmd("match none")
        return
    end

    -- Construct the substitution command with the 'c' flag for confirmation
    local substitution_command = string.format("%%s/%s/%s/gc", vim.fn.escape(replace_word, "/\\"),
        vim.fn.escape(replace_with, "/\\"))

    -- Execute the substitution command
    vim.cmd(substitution_command)

    -- Clear the search highlighting and remove the autocommand after the substitution is done
    vim.cmd("match none")

    print("Replacement completed.")
end

vim.api.nvim_create_user_command('SearchReplace', replace_prompt, { desc = "Exectutes a search and replace." })
