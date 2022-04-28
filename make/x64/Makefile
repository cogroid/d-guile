all:
	cd ../../; \
	./autogen.sh --no-configure; \
	./configure --prefix=/usr --docdir=/usr/share/doc/guile-2.2.3; \
	export CPPFLAGS="-v"; \
	export CFLAGS="-v"; \
	make
