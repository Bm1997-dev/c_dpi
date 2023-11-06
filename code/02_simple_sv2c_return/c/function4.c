#include "svdpi.h"
#include <math.h>

double mySin( double C )  
  {  
    double result;

    result = sin(C);
    printf(" ---- result of sin(C) is %f \n",result);

    return result; 
  }
  
  
double myCos( double C )  
  {  
    double result;

    result = cos(C);
    printf(" ---- result of cos(C) is %f \n",result);

    return result; 
  }
  

double myTan( double C )  
  {  
    double result;

    result = tan(C);
    printf(" ---- result of tan(C) is %f \n",result);

    return result; 
  }

/* double myCos( double C ) { return cos(C); }

double myTan( double C ) { return tan(C);  }*/
