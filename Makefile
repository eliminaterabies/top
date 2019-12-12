## This is the eliminaterabies top directory
## screens/rabies

current: target
-include target.mk

######################################################################

## Screens

projdirs += tz_pipeline R0 correlations grant glasgow
deepdirs += rdc thesis phyloglmm

screen_session: 
	$(plvscreens)

## Vim

vim_session:
	bash -cl "vi Makefile target.mk"

######################################################################

## Directories

## projdirs

thesis: rhdir/git_wzmli_mli_thesis

R0: rhdir/git_wzmli_rabies_R0

tz_pipeline: rhdir/git_wzmli_rabies_db_pipeline

rdc: rhdir/git_wzmli_rdc

phyloglmm: rhdir/git_wzmli_phyloglmm

grant: rhdir/git_wzmli_rabies_cihr

correlations: rhdir/git_wzmli_rabies_correlations

glasgow: rhdir/git_wzmli_glasgow

## linkdirs

sample: dir=~
sample: ; $(linkdir)

## makestuff/repohome.auto.mk: makestuff/repohome.list makestuff/repohome.pl

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk
-include makestuff/dirdir.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/repohome.mk
