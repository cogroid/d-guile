all:
	sudo mkdir -p /home/cogroid/local/guile/i386/lib
	sudo mkdir -p /home/cogroid/local/guile/lib/i386
	sudo mkdir -p /home/cogroid/local/guile/include/i386
	sudo cp -rf ./prebuilt/* /home/cogroid/local/guile/lib/i386/
	sudo cp -rf ./prebuilt/* /home/cogroid/local/guile/i386/lib/
	sudo cp -rf ./include/* /home/cogroid/local/guile/include/i386/
	cp -f ./lib/Makefile.am ../../lib/
	cp -f ./libguile/Makefile.am ../../libguile/
	cp -f ./libguile/pairs.h ../../libguile/
	cp -f ./libguile/weak-set.c ../../libguile/
	cd ../../; \
	./autogen.sh --no-configure; \
	export CPPFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export CFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export LIBRARY_PATH="/home/cogroid/local/guile/lib/i386"; \
	export LD_LIBRARY_PATH="/home/cogroid/local/guile/lib/i386"; \
	./configure --prefix=/home/cogroid/local/guile/i386 --docdir=/home/cogroid/local/guile/i386/share/doc/guile-2.2.3

build:
	cd ../../; \
	export CPPFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export CFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export LIBRARY_PATH="/home/cogroid/local/guile/lib/i386"; \
	export LD_LIBRARY_PATH="/home/cogroid/local/guile/lib/i386"; \
	make

install:
	sudo sh -c 'cd ../../; \
	export CPPFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export CFLAGS="-v -m32 -march=i386 -I/home/cogroid/local/guile/include/i386 -L/home/cogroid/local/guile/lib/i386 -B/home/cogroid/local/guile/lib/i386 -ldl -latomic "; \
	export LIBRARY_PATH="/home/cogroid/local/guile/lib/i386"; \
	make install;'

clean:
	cd ../../; \
	make clean