//
//  main.c
//  Numbers (BNR Ch.6)
//
//  Created by Jake Wojtas on 7/19/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    unsigned long x = 255;
    printf("x is %lu.\n", x);
    
    //Octal and hex already assume the number was unsiged
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n", x);
    
    return 0;
}
