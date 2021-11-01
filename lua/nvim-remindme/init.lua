local remindme = {}
local api = vim.api
local buf, win

local function read_data()
    api.nvim_buf_set_lines(buf, 0, -1, false, {"Line 1", "Line 2", "Line 3"})
end

function remindme.close()
    print("nvim-remindme plugin: CLOSE")
    api.nvim_win_close(win, true)
end

function remindme.open()
    print("nvim-remindme plugin: OPEN")
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
    api.nvim_win_set_option(win, "number", false)
    api.nvim_win_set_option(win, "relativenumber", false)
    api.nvim_win_set_option(win, "signcolumn", "no")
    api.nvim_win_set_option(win, "laststatus", "no")
    api.nvim_win_set_width(win, 60)

    read_data()
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
