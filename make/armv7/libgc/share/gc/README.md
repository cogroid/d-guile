[![cogroid.com](https://github.com/cogroid/resources/raw/main/images/banner/cogroid-48.png)](https://cogroid.com)

# Conservative garbage collector for C

### Packages on Ubuntu 18.04

* [libgc-dev (1:7.4.2-8ubuntu1)](https://packages.ubuntu.com/bionic/libgc-dev)
* [Source Package: libgc (1:7.4.2-8ubuntu1)](https://packages.ubuntu.com/source/bionic/libgc)


### Prerequisites

###### build-essential

```
sudo apt-get install build-essential
```

###### libatomic-ops-dev

```
sudo apt install libatomic-ops-dev
```

###### GLIBC == 2.27

```
ldd --version
```

* Ubuntu 18.04

###### GCC 32 bit

```
sudo apt install gcc-multilib

sudo apt install g++-multilib
```

###### NDK r18b

* [NDK Downloads](https://developer.android.com/ndk/downloads)
* [NDK r18b for Linux](https://dl.google.com/android/repository/android-ndk-r18b-linux-x86_64.zip)

```
Unzip to folder /home/cogroid/local/android-ndk-r18b
```

###### clang

```
sudo apt install clang
```

### Build for x64 machine

```
sudo apt update
cd ${GC_DIR}/make/x64
make > build.log&
```

```
sudo apt update
cd ${GC_DIR}/make/x64
make install
```

```
Built files are at /home/cogroid/local/libgc/x64
```

### Build for i386 machine

```
sudo apt update
cd ${GC_DIR}/make/i386
make > build.log&
```

```
sudo apt update
cd ${GC_DIR}/make/i386
make install
```

```
Built files are at /home/cogroid/local/libgc/i386
```

### Build for armv7 machine

Set APP_PKG to package name of your android app.

```
export APP_PKG=com.cogroid.atomspace.tester
```

Copy installed folder of libatomic_ops.

```
cp -rf ${INSTALLED_LIBATOMIC_OPS}/* ${GC_DIR}/make/armv7/libatomic_ops/
```

```
sudo apt update
cd ${GC_DIR}/make/armv7
make > configure.log&
```

```
sudo apt update
cd ${GC_DIR}/make/armv7
make update_makefile
```

```
sudo apt update
cd ${GC_DIR}/make/armv7
make build > build.log&
```

```
sudo apt update
cd ${GC_DIR}/make/armv7
make install
```

```
Built files are at /home/cogroid/local/libgc/armv7
```

---
[Head icons created by Freepik - Flaticon](https://www.flaticon.com/free-icons/head)
