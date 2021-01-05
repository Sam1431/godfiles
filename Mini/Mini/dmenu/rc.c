#include <string.h>
#include <malloc.h>
#include <ctype.h>
#include "rc.h"

/* Declare this as such to avoid dynamic memory                  */
/* allocation. This gives a 0.000000000000000000000000000000001% */
/* performance increase. */
static KVPair pair;

void trim(char* str, unsigned long len)
{
    /* Trim leading and trailing whitespace from a string */
    unsigned long beg = -1;
    while (isspace(str[++beg]));

    len -= beg;
    memmove(str, str + beg, len);

    while (isspace(str[--len]));

    str[len + 1] = 0;
}

KVPair* rc_parseline(const char* line)
{
    int ws_offset = -1;
    while (isspace(line[++ws_offset]));
    line += ws_offset;

    /* Ignore commented lines */
    if (line[0] == '#' || line[0] == ';')
	return NULL;

    sscanf(line, "%[^=]=%[^\n]", pair.key, pair.val);
    trim(pair.key, strlen(pair.key));
    trim(pair.val, strlen(pair.val));

    return &pair;
}
