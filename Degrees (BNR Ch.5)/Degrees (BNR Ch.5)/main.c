//
//  main.c
//  Degrees (BNR Ch.5)
//
//  Created by Jake Wojtas on 7/19/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//Declaring a static variable and initiliazing it to 50 degrees
static float lastTemperature = 50.0;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}


int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    return EXIT_SUCCESS;
}
