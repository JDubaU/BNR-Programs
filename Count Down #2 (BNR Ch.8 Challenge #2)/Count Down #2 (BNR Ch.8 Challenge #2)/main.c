//
//  main.c
//  Count Down #2 (BNR Ch.8 Challenge #2)
//
//  Created by Jake Wojtas on 8/1/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    const char * readline (void*); //This line was needed. The Book did not say to use this line
    printf("What number shall I start counting down from");
    const char *name = readline(NULL);
    int num = atoi(name);
    for (int i = num; i > 0; i = i - 3)
    {
        printf("%d\n", i);
        if (i % 5 == 0)
        {
            printf("Found one!\n");
        }
    }
    return 0;

}
