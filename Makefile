PREFIX = $${HOME}/.local

install:
	mkdir -p $(DESTDIR)${PREFIX}/share/Quran
	cp Quran.txt $(DESTDIR)$(PREFIX)/share/Quran
	cp Quran $(DESTDIR)$(PREFIX)/bin
	chmod +x $(DESTDIR)$(PREFIX)/bin/Quran

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/Quran
	rm $(DESTDIR)$(PREFIX)/share/Quran/Quran.txt
	rmdir $(DESTDIR)$(PREFIX)/share/Quran

.PHONY: install uninstall
