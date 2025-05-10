-- Text formatting
vim.o.encoding = 'utf-8'
vim.o.fileformat = 'unix'
vim.o.colorcolumn = '81'
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.expandtab = false

-- Statusline
vim.cmd[[set statusline=]]
vim.cmd[[set statusline+=\ %F]]     -- Full file path
vim.cmd[[set statusline+=%=]]       -- Space
vim.cmd[[set statusline+=\ %y]]     -- Filetype                    
vim.cmd[[set statusline+=\ [%{&fileencoding}] ]]                   
vim.cmd[[set statusline+=\ %l:%c]]  -- Current line and character

-- Disable builtins
vim.g.loaded_tutor             = 1
vim.g.loaded_spec              = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_getscript         = 1
vim.g.loaded_getscriptPlugin   = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_logipat           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_matchparen        = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwFileHandlers = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_netrwSettings     = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_sql_completion    = 1
vim.g.loaded_syntax_completion = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
vim.g.vimsyn_embed             = 1
