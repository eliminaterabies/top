## This is the eliminaterabies top directory

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

screens.mk: makestuff/lmk.pl screens.list

vim_session: 
	bash -cl "vmt screens.list"

screen_session: screens.update
	$(MAKE) $(vscreens)

######################################################################

### Makestuff

Sources += Makefile README.md

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

### Includes

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
