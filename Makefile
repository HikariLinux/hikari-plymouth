PREFIX ?= /usr
RSVG_CONVERT ?= rsvg-convert
THEME_DIR = $(DESTDIR)$(PREFIX)/share/plymouth/themes/hikari

all: hikari/hikari.png hikari/spinner.png

hikari/hikari.png: hikari/hikari.svg
	$(RSVG_CONVERT) -w 512 -h 512 -o $@ $<

hikari/spinner.png: hikari/spinner.svg
	$(RSVG_CONVERT) -w 128 -h 128 -o $@ $<

install: all
	install -d $(THEME_DIR)
	install -m0644 hikari/*.png hikari/hikari.plymouth hikari/hikari.script $(THEME_DIR)/

uninstall:
	rm -rf $(THEME_DIR)

clean:
	rm -f hikari/hikari.png hikari/spinner.png

.PHONY: all install uninstall clean
