//
//  main.c
//  Numbers3 (BNR Ch.7)
//
//  Created by Jake Wojtas on 7/19/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//  Ch.7 Challenge is included in here because it was short

#include <stdio.h>


int main(int argc, const char * argv[])
{
    double y = 12345.6789;
    printf("y is %.2f\n", y);
    printf("y is %.2e\n", y);
    
    //Ch.7 Challenge
    double x = 1;
    double sin(double x);
    x = sin(x);
    printf("The sin of 1 radian is %.3f\n", x);

    return 0;
    
}
