//
//  main.c
//  BMICalc (BNR Ch.11)
//
//  Created by Jake Wojtas on 8/21/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

typedef struct
{
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
    Person jake;
    jake.heightInMeters = 1.7526;
    jake.weightInKilos = 63.5029;
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(jake);
    printf("jake has a BMI of %.4f\n", bmi);
    
    return 0;
}
