if exists('g:_SpaceVimPlugManager_ftplugin')
  finish
else
  let g:_SpaceVimPlugManager_ftplugin = 1
endif
function! MyPlugin(...)
    if &ft ==# 'SpaceVimPlugManager'
        call airline#extensions#apply_left_override('SpaceVimPlugins', '')
        " Alternatively, set the various w:airline_section variables
        "let w:airline_section_a = 'SpaceVimPluginManager'
        "let w:airline_section_b = ''
        "let w:airline_section_c = ''
        "let w:airline_render_left = 1
        "let w:airline_render_right = 0
    endif
endfunction
try
    call airline#add_statusline_func('MyPlugin')
catch
endtry