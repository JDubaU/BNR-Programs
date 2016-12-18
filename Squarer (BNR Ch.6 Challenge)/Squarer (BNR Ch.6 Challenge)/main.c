//
//  main.c
//  Squarer (BNR Ch.6 Challenge)
//
//  Created by Jake Wojtas on 7/19/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int TheSquarer (int notsquaredNumber)
{
    int squaredNumber = notsquaredNumber * notsquaredNumber;
    return squaredNumber;
}

int main(int argc, const char * argv[])
{
    int firstNumber = 5;
    int secondNumber = TheSquarer(firstNumber);
    printf("\"%d\" squared is \"%d\".\n", firstNumber, secondNumber);
    return 0;
}
