if !has('nvim-0.5')
    echoerr "nvim-remindme requires at least nvim-0.5"
    finish
endif

if exists('g:remindme_loaded')
    finish
endif

command! RemindMeShow lua require("nvim-remindme").show()
command! RemindMeAdd lua require("nvim-remindme").add()
command! RemindMeDelete lua require("nvim-remindme").delete()
command! RemindMeEdit lua require("nvim-remindme").edit()

let g:remindme_loaded = 1

