installable-package: main.c
	gcc main.c -Wall -g -o installable-package

clean:
	rm installable-package

install:
	install -D -m0755 installable-package ${DESTDIR}/usr/bin/installable-package

uninstall:
	rm -f ${DESTDIR}/usr/bin/installable-package

