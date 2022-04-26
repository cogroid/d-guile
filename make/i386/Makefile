all:
	sudo mkdir -p /home/cogroid/local/lib/i386
	sudo mkdir -p /home/cogroid/local/include/i386
	sudo cp -rf ./prebuilt/* /home/cogroid/local/lib/i386/
	sudo cp -rf ./include/* /home/cogroid/local/include/i386/
	cp -f ./lib/Makefile.am ../../lib/
	cp -f ./libguile/Makefile.am ../../libguile/
	cd ../../; \
	./autogen.sh --no-configure; \
	./configure --prefix=/usr --docdir=/usr/share/doc/guile-2.2.3; \
	export CPPFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/include/i386 -L/home/cogroid/local/lib/i386 -ldl"; \
	export CFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/include/i386 -L/home/cogroid/local/lib/i386 -ldl"; \
	make
