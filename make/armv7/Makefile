_APP_PKG_=${APP_PKG}
APP_DIR=/data/data/${_APP_PKG_}

all:
	sudo mkdir -p ${APP_DIR}

	sudo rm -rf ${APP_DIR}/libtool
	sudo ln -s /home/cogroid/local/libtool/armv7 ${APP_DIR}/libtool

	sudo rm -rf ${APP_DIR}/libgmp
	sudo ln -s /home/cogroid/local/libgmp/armv7 ${APP_DIR}/libgmp

	sudo rm -rf ${APP_DIR}/libunistring
	sudo ln -s /home/cogroid/local/libunistring/armv7 ${APP_DIR}/libunistring

	sudo rm -rf ${APP_DIR}/libiconv
	sudo ln -s /home/cogroid/local/libiconv/armv7 ${APP_DIR}/libiconv

	sudo rm -rf ${APP_DIR}/libffi
	sudo ln -s /home/cogroid/local/libffi/armv7 ${APP_DIR}/libffi

	sudo rm -rf ${APP_DIR}/libgc
	sudo ln -s /home/cogroid/local/libgc/armv7 ${APP_DIR}/libgc

	sudo mkdir -p /home/cogroid/local/libtool/armv7
	sudo cp -rf ./libtool/* /home/cogroid/local/libtool/armv7/

	sudo mkdir -p /home/cogroid/local/libgmp/armv7
	sudo cp -rf ./libgmp/* /home/cogroid/local/libgmp/armv7/

	sudo mkdir -p /home/cogroid/local/libunistring/armv7
	sudo cp -rf ./libunistring/* /home/cogroid/local/libunistring/armv7/

	sudo mkdir -p /home/cogroid/local/libiconv/armv7
	sudo cp -rf ./libiconv/* /home/cogroid/local/libiconv/armv7/

	sudo mkdir -p /home/cogroid/local/libffi/armv7
	sudo cp -rf ./libffi/* /home/cogroid/local/libffi/armv7/

	sudo mkdir -p /home/cogroid/local/libgc/armv7
	sudo cp -rf ./libgc/* /home/cogroid/local/libgc/armv7/

	sudo rm -rf /home/cogroid/local/guile/armv7

	sudo mkdir -p /home/cogroid/local/guile/armv7/lib
	sudo cp -rf ./prebuilt/* /home/cogroid/local/guile/armv7/lib/

	sudo mkdir -p /home/cogroid/local/guile/armv7/bbin
	sudo cp -rf ./bin/* /home/cogroid/local/guile/armv7/bbin/
	sudo rm -f /home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-cc
	sudo ln -s /home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc /home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-cc

	sudo cp -f ./langinfo.h /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/

	cp -f ./pairs.h ../../libguile/
	cp -f ./weak-set.c ../../libguile/
	cp -f ./socket.c ../../libguile/
	cp -f ./strings.c ../../libguile/

	sudo rm -rf ${APP_DIR}/guile
	sudo mkdir -p ${APP_DIR}
	sudo ln -s /home/cogroid/local/guile/armv7 ${APP_DIR}/guile

	cd ../../; \
	export PATH="/home/cogroid/local/guile/armv7/bbin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/arm-linux-androideabi/bin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:${PATH}"; \
	./autogen.sh --no-configure; \
	./configure \
	ABI=32 \
	LDFLAGS="-fPIE -pie -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv " \
	CFLAGS="-fPIE -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv " \
	CPPFLAGS="-fPIE -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv " \
	CXXFLAGS="-fPIE -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv " \
	--build=i386-linux-gnu \
	--host=arm-linux-androideabi \
	--without-libltdl-prefix \
	--without-libgmp-prefix \
	--without-libunistring-prefix \
	--prefix=${APP_DIR}/guile --docdir=${APP_DiR}/guile/share/doc/guile-2.2.3 --host=arm-linux-androideabi;

libfixing.so: ./fixing.c
	sudo rm -f /home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a/libc++.so
	sudo ln -s /home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a/libc++_shared.so /home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a/libc++.so
	/home/cogroid/local/android-ndk-r18b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -v --target=arm-linux-androideabi -march=armv7-a -gcc-toolchain /home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64 -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/usr/lib32 -L/usr/lib/x86_64-linux-gnu -B/usr/lib/x86_64-linux-gnu -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -stdlib=libc++ -L/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a -B/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a   -shared -o ./prebuilt/libfixing.so -Wl,-soname -Wl,libfixing.so ./fixing.c

clean:
	cd ../../; \
	make clean

build:
	cp -f /home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib/crtbegin_so.o ../../libguile/
	cp -f /home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib/crtend_so.o ../../libguile/
	cd ../../; \
	export FLAGS="-fPIE -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv "; \
	export LDFLAGS="-pie ${FLAGS}"; \
	export CFLAGS="${FLAGS}"; \
	export CPPFLAGS="${FLAGS}"; \
	export CXXFLAGS="${FLAGS}"; \
	export PATH="/home/cogroid/local/guile/armv7/bbin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/arm-linux-androideabi/bin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:${PATH}"; \
	make

update_makefile:
	cd ../../; \
	./make/armv7/chmkfl.sh

install:
	sudo sh -c 'cd ../../; \
	export FLAGS="-fPIE -I${APP_DIR}/libiconv/include -L${APP_DIR}/libiconv/lib -B${APP_DIR}/libiconv/lib -I${APP_DIR}/libgc/include -L${APP_DIR}/libgc/lib -B${APP_DIR}/libgc/lib -I${APP_DIR}/libunistring/include -L${APP_DIR}/libunistring/lib -B${APP_DIR}/libunistring/lib -I${APP_DIR}/libffi/lib/libffi-3.2.1/include -L${APP_DIR}/libffi/lib -B${APP_DIR}/libffi/lib -I${APP_DIR}/libgmp/include -L${APP_DIR}/libgmp/lib -B${APP_DIR}/libgmp/lib -I${APP_DIR}/libtool/include -L${APP_DIR}/libtool/lib -B${APP_DIR}/libtool/lib -v --target=arm-linux-androideabi -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -mthumb -fPIC -fno-integrated-as --sysroot /home/cogroid/local/android-ndk-r18b/sysroot -isystem /home/cogroid/local/android-ndk-r18b/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=26 -fexceptions -frtti -ffunction-sections -funwind-tables -fstack-protector-strong -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -no-canonical-prefixes -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++/include -I/home/cogroid/local/android-ndk-r18b/sources/cxx-stl/llvm-libc++abi/include -I/home/cogroid/local/android-ndk-r18b/sources/android/support/include -DANDROID -Wa,--noexecstack -Wformat -Werror=format-security -DNDEBUG -O2 -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -B/home/cogroid/local/android-ndk-r18b/platforms/android-24/arch-arm/usr/lib -L/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -B/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/home/cogroid/local/guile/armv7/lib -B/home/cogroid/local/guile/armv7/lib -lltdl -lfixing -lgmp -lffi -lunistring -liconv "; \
	export LDFLAGS="-pie ${FLAGS}"; \
	export CFLAGS="${FLAGS}"; \
	export CPPFLAGS="${FLAGS}"; \
	export CXXFLAGS="${FLAGS}"; \
	export PATH="/home/cogroid/local/guile/armv7/bbin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/arm-linux-androideabi/bin:/home/cogroid/local/android-ndk-r18b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:${PATH}"; \
	make install;'
