## This is a _linked_ (mkfile) Makefile for ct_cleaning (Elaine F.)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## Sharepoint is here, who knows what it does 2025 Jun 11 (Wed)
## https://gla-my.sharepoint.com/personal/elaine_ferguson_glasgow_ac_uk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Felaine%5Fferguson%5Fglasgow%5Fac%5Fuk%2FDocuments%2FRabies%2Fct%5Fcleaning%2Fdata%2Fraw&ga=1

## downcall raw ##

## This is a copy of Elaine's data structure (since we can't save the data here)
Makefile: | data/raw data/to_clean

data/raw: | data raw.stamp
	ls raw > $(null) && cd data && $(LNF) ../raw .

data/to_clean: | data
	$(mkdir)

######################################################################

## This looks like JD stuff for mirroring, not checked

Ignore += raw
data raw:
	$(mkdir)

Ignore += raw.stamp
raw.stamp: | raw
	rclone sync -u $(mirror)/$| $|/ 
	$(touch)

######################################################################

Sources += $(wildcard *.R R/*.R)

## This produces silly figures to default location and cool figures to 
## figs/
## Auto-fixes problems before a certain data
## Outputs problems and omissions to data/to_clean 
## Outputs cleaned data to data/processed
run_pipeline.Rout: run_pipeline.R
	$(pipeR)

Ignore += *rabid_creds*

## 0_download_data.script.Rout: R/0_download_data.R
%.script.Rout: R/%.R
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
