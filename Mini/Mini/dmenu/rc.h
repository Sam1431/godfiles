typedef struct
{
    char key[256];
    char val[256];
} KVPair;

KVPair*     rc_parseline(const char* line);
