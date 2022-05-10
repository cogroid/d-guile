#include <langinfo.h>
#include <iconv.h>

void __assert_fail();

char *nl_langinfo(nl_item item);

char *nl_langinfo_l(nl_item item, locale_t loc);

int iconv_close(iconv_t cd);

iconv_t iconv_open(const char *tocode, const char *fromcode);

size_t iconv(iconv_t cd, char **restrict inbuf, size_t *restrict inbytesleft, char **restrict outbuf, size_t *restrict outbytesleft);

void __assert_fail() {
}

void __ctype_b_loc() {

}

char *nl_langinfo(nl_item item) {
	return "";
}

char *nl_langinfo_l(nl_item item, locale_t loc) {
	return "";
}

int iconv_close(iconv_t cd) {
	return 0;
}

iconv_t iconv_open(const char *tocode, const char *fromcode) {

}

size_t iconv(iconv_t cd, char **restrict inbuf, size_t *restrict inbytesleft, char **restrict outbuf, size_t *restrict outbytesleft) {
	return 0;
}
