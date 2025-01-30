if exists('g:nvim-copy-diagnostics') | finish | endif
let g:loaded_nvim_tiny_diagnostics= 1
lua require('nvim-copy-diagnostics').setup()
