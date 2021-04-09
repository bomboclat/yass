# Top level makefile.

VERSION = 1.1
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

default: all

install:
	@echo installing executable file to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f yass ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/yass
	@echo installing manual page to ${DESTDIR}${MANPREFIX}/man1
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@sed "s/VERSION/${VERSION}/g" < yass.1 > ${DESTDIR}${MANPREFIX}/man1/yass.1
	@chmod 644 ${DESTDIR}${MANPREFIX}/man1/yass.1
	(cd lib/smu; $(MAKE) $@)
	(cd lib/sfi; $(MAKE) $@)

uninstall:
	@echo removing executable file from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/yass
	@echo removing manual page from ${DESTDIR}${MANPREFIX}/man1
	@rm -f ${DESTDIR}${MANPREFIX}/man1/yass.1
	(cd lib/smu; $(MAKE) $@)
	(cd lib/sfi; $(MAKE) $@)


.DEFAULT:
	(cd lib/smu; $(MAKE) $@)
	(cd lib/sfi; $(MAKE) $@)

.PHONY: install uninstall
