#!/bin/bash

sed -i 's/libtest_asmobs_la_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC/libtest_asmobs_la_LINK = echo "$(LIBTOOL) $(AM_V_lt) --tag=CC/g' ./test-suite/standalone/Makefile

sed -i 's/\t$(libtest_asmobs_la_LDFLAGS) $(LDFLAGS) -o $@/\t    $(libtest_asmobs_la_LDFLAGS) $(LDFLAGS) -o $@"/g' ./test-suite/standalone/Makefile

sed -i 's/libtest_ffi_la_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC/libtest_ffi_la_LINK = echo "$(LIBTOOL) $(AM_V_lt) --tag=CC/g' ./test-suite/standalone/Makefile

sed -i '0,/\t$(LDFLAGS) -o $@"/{s/\t$(LDFLAGS) -o $@"/\t$(LDFLAGS) -o $@/}' ./test-suite/standalone/Makefile

sed -i '0,/\t$(LDFLAGS) -o $@/{s/\t$(LDFLAGS) -o $@/\t$(LDFLAGS) -o $@"/}' ./test-suite/standalone/Makefile

sed -i 's/libtest_extensions_la_LINK = $(LIBTOOL) $(AM_V_lt) --tag=CC/libtest_extensions_la_LINK = echo "$(LIBTOOL) $(AM_V_lt) --tag=CC/g' ./test-suite/standalone/Makefile

sed -i 's/\t$(libtest_extensions_la_LDFLAGS) $(LDFLAGS) -o $@/\t    $(libtest_extensions_la_LDFLAGS) $(LDFLAGS) -o $@"/g' ./test-suite/standalone/Makefile

sed -i 's/GOBJECTS =/GOBJECTS =\n#GOBJECTS =/g' ./module/Makefile

sed -i 's/SOURCES =/SOURCES =\nSOURCES_OLD =/g' ./module/Makefile

sed -i 's/SOURCES =/SOURCES =\nSOURCES_OLD =/g' ./bootstrap/Makefile
