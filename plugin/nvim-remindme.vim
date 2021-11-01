if !has('nvim-0.5')
    echoerr "nvim-remindme requires at least nvim-0.5"
    finish
endif

if exists('g:remindme_loaded')
    finish
endif

command! RemindMeOpen lua require("nvim-remindme").open()
command! RemindMeAdd lua require("nvim-remindme").add()
command! RemindMeDelete lua require("nvim-remindme").delete()
command! RemindMeEdit lua require("nvim-remindme").edit()
command! RemindMeRefresh lua require("nvim-remindme").refresh()
command! RemindMeClose lua require("nvim-remindme").close()

let g:remindme_loaded = 1

