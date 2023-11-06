#include <stdio.h>
#include "svdpi.h"

typedef struct pkt_t {
    int    A;
    int    B;
    float  C;
    double D;
} pkt_t;

int myFunc(pkt_t *v)
{
    printf("%s() A=%x B=%d C=%f D=%f\n", __func__, v->A, v->B, v->C, v->D);
    if(v->A==65) {
    return 0; }
}


//%s means string
//_func_ mean function name
//v->A