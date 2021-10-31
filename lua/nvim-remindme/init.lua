local remindme = {}
local api = vim.api
local buf, win

function remindme.show()
    print("nvim-remindme plugin: SHOW")
    -- create veritcal split to the right
    api.nvim_command("botright vnew")
    -- save the window handle and the buffer handle of the new spit
    win = api.nvim_get_current_win()
    buf = api.nvim_get_current_buf()

    -- set a name
    api.nvim_buf_set_name(buf, "RemindMe")

    -- set some options for the buffer
    api.nvim_buf_set_option(buf, "buftype", "nofile")
    api.nvim_buf_set_option(buf, "swapfile", false)
    api.nvim_buf_set_option(buf, "bufhidden", "wipe")
    api.nvim_buf_set_option(buf, "filetype", "nvim-remindme")

    -- set some options for the window
    api.nvim_win_set_option(win, "wrap", false)
    api.nvim_win_set_option(win, "cursorline", true)
    api.nvim_win_set_width(win, 40)
end

function remindme.add()
    print("nvim-remindme plugin: ADD")
end

function remindme.delete()
    print("nvim-remindme plugin: DELETE")
end

function remindme.edit()
    print("nvim-remindme plugin: EDIT")
end

function remindme.refresh()
    print("nvim-remindme plugin: REFRESH")
end

return remindme
