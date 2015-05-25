if (exists('g:loaded_composer') && g:loaded_composer) || v:version < 700 || &cp
  finish
endif
let g:loaded_composer = 1

function! s:Composer(bang, args)
  let cmd = 'composer ' . a:args
  execute ':!' . cmd
endfunction

command! -bar -bang -nargs=* Composer call s:Composer(<bang>0,<q-args>)