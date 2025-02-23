## This is a _linked_ (mkfile) Makefile for ct_cleaning (Elaine F.)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

mirrors += raw

Makefile: | data/raw data/to_clean

data/raw: | data
	ls raw > $(null) && cd data && $(LNF) ../raw .

data/to_clean: | data
	$(mkdir)

data:
	$(mkdir)

######################################################################

Sources += $(wildcard R/*.R)

run_pipeline.Rout: run_pipeline.R
	$(pipeR)

######################################################################

### Makestuff

## Sources += $(wildcard *.mk)
## include $(wildcard *.mk)

Ignore += Makefile
Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	ln -s ../makestuff .
	ls makestuff/Makefile

-include makestuff/os.mk

-include makestuff/pipeR.mk
-include makestuff/mirror.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
