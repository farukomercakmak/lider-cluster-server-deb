all: install

install: 
	mkdir -p $(DESTDIR)/usr/share/lider-cluster-server
	@cp -rf lider-cluster-server/* $(DESTDIR)/usr/share/lider-cluster-server
	mkdir -p $(DESTDIR)/etc/systemd/system
	@cp lider.service $(DESTDIR)/etc/systemd/system/
	mkdir -p $(DESTDIR)/etc/init.d
	@cp lider $(DESTDIR)/etc/init.d/
	mkdir -p $(DESTDIR)/usr/share/lider-cluster-server/records
	@cp -rf records/* $(DESTDIR)/usr/share/lider-cluster-server/records/
	mkdir -p $(DESTDIR)/usr/share/lider-cluster-server/etc
	@cp tr.org.liderahenk.example.registration.cfg $(DESTDIR)/usr/share/lider-cluster-server/etc/
	mkdir -p $(DESTDIR)/usr/bin
	@cp lider-client $(DESTDIR)/usr/bin/


uninstall:
	@rm -rf /usr/share/lider-cluster-server
	@rm -rf /etc/systemd/system/lider.service
	@rm -rf /etc/init.d/lider
	@rm -rf /usr/bin/lider-client

.PHONY: install uninstall
