
2024 Oct 02 (Wed)
=================

Next step is to _read_ papers (start with R0 paper) and figure out what data products we _want_ (not necessarily exactly the same as what's there).

After that: figure out what _public_ data we should be using to make these products.

After that: combine and build on code in links and egfR0 to make that public data.

2024 Aug 30 (Fri)
=================

Trying to take centralized notes. Today we made a makefile in _this_ repo to keep track of our Dropboxes. 

We have a new-ish link repo and we are going to use that and the upstream pipeline repo (rabiesTZ) to do as much cleaning as we can, and pass cleaner things downstream.

We are currently rebuilding legacy code in egfR0 in R0paper, trying to drop as much as we can by shunting it upstream.

Currently thinking about:
* make an $(outdir) to parallel outputs? But no automatic pushing.
	* maybe also a $(gitpush) eventually??
* include datalinks.mk (here) from various repos
* Keep rebuilding stuff that is currently in the horrible cribbled R0paper/public_data

----------------------------------------------------------------------

## Rabies Grant

- follow up on correlations, what are the biological questions?
	- KH was thinking about pushing this forward and collect more samples from dead dogs

### Products 

	- shiny slider of resource allocation 





