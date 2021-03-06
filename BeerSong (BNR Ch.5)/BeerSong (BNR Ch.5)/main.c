//
//  main.c
//  BeerSong (BNR Ch.5)
//
//  Created by Jake Wojtas on 7/2/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//  **^|

#include <stdio.h>

void singSongFor (int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
    int oneFewer = numberOfBottles - 1;
    printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
    singSongFor(oneFewer); //function calls itself
    
    printf("Put a bottle in the recycling, %d empty bottles of beer in the bin.\n", numberOfBottles);
    }
}



int main(int argc, const char * argv[])

{
    singSongFor(4);
    return 0;
    
}
