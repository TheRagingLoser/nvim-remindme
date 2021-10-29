" in plugin/nvim-remindme.vim
if exists('g:loaded_remindme') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! Remindme lua require('nvim-remindme').remindme()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_remindme = 1
