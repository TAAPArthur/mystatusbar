all: mystatusbar

CFLAGS := -std=c99 -D_DEFAULT_SOURCE

mystatusbar: mystatusbar.o
	${CC} -o $@ $^

install: mystatusbar get_battery
	install -D -m 0755 -t "$(DESTDIR)/usr/bin/" $^

uninstall: mystatusbar get_battery
	rm -f $(DESTDIR)/usr/bin/mystatusbar
	rm -f $(DESTDIR)/usr/bin/get_battery

clean:
	rm -f mystatusbar *.o
