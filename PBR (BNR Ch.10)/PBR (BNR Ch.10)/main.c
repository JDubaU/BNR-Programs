//
//  main.c
//  PBR (BNR Ch.10)
//
//  Created by Jake Wojtas on 8/3/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double pi = 45.616;
    double integerPart;
    double fractionPart;
    
    //Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    //Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.3f\n", integerPart, fractionPart);  //The .0 means that it will only show the integer part
                                                                                     //The .2 means it will only show the number to the right of 2 decimal places. .3 to the right of three decimal places and so on
    return 0;
    
}
