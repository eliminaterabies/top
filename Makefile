## This is the eliminaterabies top directory

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

screens.mk: makestuff/lmk.pl screens.list

vim_session: 
	bash -cl "vmt screens.list notes.md"

screen_session: screens.update
	$(MAKE) $(vscreens)

######################################################################

## Maybe this is a good place to describe our new linking paradigm
Sources += datalinks.mk datalinks.md

Ignore += local.mk
-include local.mk
Drop ?= ~/Dropbox

resourceDrop: dir=$(Drop)/rabies_cihr
resourceDrop:
	$(linkdirname)

######################################################################

### Makestuff

Sources += Makefile README.md notes.md

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
