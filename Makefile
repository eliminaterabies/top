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

thesis: 
	git clone https://github.com/wzmli/mli_thesis.git $@

R0: 
	git clone https://github.com/wzmli/rabies_R0.git $@

tz_pipeline: 
	git clone https://github.com/wzmli/rabies_db_pipeline.git $@

rdc: 
	git clone https://github.com/wzmli/rdc.git $@

phyloglmm: 
	git clone https://github.com/wzmli/phyloglmm.git $@

grant: 
	git clone https://github.com/wzmli/rabies_cihr.git $@

correlations: 
	git clone https://github.com/wzmli/rabies_correlations.git $@

glasgow: 
	git clone https://github.com/wzmli/glasgow.git $@

## linkdirs

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
## -include makestuff/repohome.mk
