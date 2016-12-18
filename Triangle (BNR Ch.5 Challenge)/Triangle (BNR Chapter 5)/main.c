//
//  main.c
//  Triangle (BNR Ch.5 Challenge)
//
//  Created by Jake Wojtas on 7/19/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float firstAngle, float secondAngle)
{
    float thirdangle = firstAngle + secondAngle;
    return thirdangle;
}


int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
