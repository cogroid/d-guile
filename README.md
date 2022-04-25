[![cogroid.com](https://github.com/cogroid/resources/raw/main/images/banner/cogroid-48.png)](https://cogroid.com)

# GNU Ubiquitous Intelligent Language for Extensions

### Packages on Ubuntu 18.04

* [guile-2.2](https://packages.ubuntu.com/bionic/lisp/guile-2.2)
* [Source Package: guile-2.2](https://packages.ubuntu.com/source/bionic/guile-2.2)

### Prerequisites

###### build-essential

```
sudo apt-get install build-essential
```

###### GLIBC == 2.27

```
ldd --version
```

* Ubuntu 18.04

###### Flex

```
sudo apt install flex
```

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
cd ${GUILE_DIR}/make/x64
make
```

### Build for i586 machine

```
cd ${GUILE_DIR}/make/i386
make
```

### Build for armv7-a machine

```
cd ${GUILE_DIR}/make/armv7
make
```

---
[Head icons created by Freepik - Flaticon](https://www.flaticon.com/free-icons/head)
