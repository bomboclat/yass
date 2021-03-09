# Top level makefile.

default: all

.DEFAULT:
	(cd lib/smu; $(MAKE) $@)
	(cd lib/sfi; $(MAKE) $@)

