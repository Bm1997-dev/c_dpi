#include "svdpi.h"
#include<stdio.h>

typedef struct pkt_t {
    char   A;
    int    B;
    float  C;
    double D;
} pkt_t;

int myFunc(pkt_t *v)
{
    v->A = 'P';
    v->B = rand()%100 + 1;
    printf("value of B is %d",v->B);
    v->C = 123.321;
    v->D = 1.2;
    return 0;
}
