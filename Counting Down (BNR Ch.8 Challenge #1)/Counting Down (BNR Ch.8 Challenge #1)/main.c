//
//  main.c
//  Counting Down (BNR Ch.8 Challenge #1)
//
//  Created by Jake Wojtas on 8/1/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for (int i = 99; i > 0; i = i - 3)
    {
        printf("%d\n", i);
        if (i % 5 == 0)
        {
            printf("Found one!\n");
        }
    }
    return 0;
}

