
## Make a local.mk (locally ☺) if you want to reset the Dropbox base directory
Ignore += ../local.mk
Drop = ~/Dropbox
-include ../local.mk

## Original data
Ignore += datadir
datadir/%:
	$(MAKE) datadir
datadir: dir=$(Drop)/Rabies_TZ/
datadir:
	$(linkdirname)

## Pipeline outputs (different pointer inside the same Dropbox)
Ignore += pipeline
pipeline/%:
	$(MAKE) pipeline
pipeline: dir=$(Drop)/Rabies_TZ/pipeline/SD_dogs/
pipeline:
	$(linkdirname)

## linking outputs
Ignore += link
link/%:
	$(MAKE) link
link: dir=$(Drop)/Rabies_TZ/link/SD_dogs/
link:
	$(linkdirname)

#################################################################

Ignore += dogs.csv

update_dogs:
	$(RM) dogs.csv
dogs.csv: | pipeline
	$(LNF) pipeline/SD_dogs.incubation.Rout.csv $@ 

