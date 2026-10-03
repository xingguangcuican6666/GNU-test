#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>

#ifdef __ANDROID__
#error "Android/Bionic is not supported because this program requires GNU-specific features."
#endif

int main(void) {
    char *message = NULL;

    if (asprintf(&message, "Hello, GNU AArch64 world!") < 0) {
        return 1;
    }

    puts(message);
    free(message);
    return 0;
}
