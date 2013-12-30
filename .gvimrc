set guioptions-=T " hide toolbar
set lines=55 columns=82

colorscheme twilight

set guifont=Monaco:h15

" Use cmd-P to open PeepOpen
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end
