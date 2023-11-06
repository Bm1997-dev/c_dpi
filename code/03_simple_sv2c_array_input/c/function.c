#include "svdpi.h"
#include <stdio.h>

//svOpenArrayHandle work for dyanamic array
int myFunc(const svOpenArrayHandle r)
{
    int i;
    int low = svLow(r, 1);  //0
    int high = svHigh(r, 1);  //4
    // int re = svSize(r, 1);
    // int re = svLeft(r, 1);
    int re = svSizeOfArray(r);
    printf("value of low %d, high %d re %d",low,high,re);
    printf("\n");
    for(i=low; i<=high; i++) {
        printf("[%d]=%d ", i, *((int*)svGetArrElemPtr1(r, i)));
    }
    printf("\n");
    return i;
}



/* It means
      when we call svLow, svHigh methods
        first argument is array handle
        second argument indicates 
          0 -> array data type size
          1 -> array dimensional */
          
          
          
      //svLow = find lowest index of array
      //svhigh = if dimensional is 0 then work msb of highest index and dimensional 1 then work as highest index of array
      //svSIze = indicate size of array
      //svLeft = if dimensional is 0 then indicate msb bit and dimensional is 1 then indicate lsb bit
      //svDimensions = return dimensional of array