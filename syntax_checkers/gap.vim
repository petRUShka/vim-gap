"============================================================================
"File:        gap.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  petRUShka <petrushkin at yandex dot ru>
"License:     GPLv3
"
"============================================================================
if exists("loaded_gap_syntax_checker")
    finish
endif
let loaded_gap_syntax_checker = 1

"fail if the user doesn't have gap installed
if !executable("gap")
    finish
endif

function! SyntaxCheckers_gap_GetLocList()
    let makeprg = 'sh '.shellescape(findfile("bin/make_gap", &rtp)).' '.shellescape(expand('%'))
    
    let errorformat =  '%ESyntax error: %m in %f line %l'

    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction
