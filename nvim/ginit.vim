if exists(':GuiPopupmenu')
        GuiPopupmenu 0
    endif
if exists(':GuiTabline')
    GuiTabline 0
endif
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
colorscheme gotham
if exists(':GuiFont')
             GuiFont! Cascadia\ Code:h12
             endif 
