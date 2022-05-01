all:
	sudo mkdir -p /home/cogroid/local/guile/x64
	cd ../../; \
	./autogen.sh --no-configure; \
	./configure --prefix=/home/cogroid/local/guile/x64 --docdir=/home/cogroid/local/guile/x64/share/doc/guile-2.2.3; \
	export CPPFLAGS="-v"; \
	export CFLAGS="-v"; \
	make

install:
	sudo sh -c 'cd ../../; \
	make install;'