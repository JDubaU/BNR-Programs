//
//  main.c
//  Coolness (BNR Ch.8)
//
//  Created by Jake Wojtas on 7/31/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 0; i < 12; i++)
    {
        if (i % 5 == 0) //If i % 3 == 0 then the answer is 10 if i % 2 == 0 then there is no answer
        {
            continue;
        }
        printf("Checking i = %d\n", i);
        if (i + 90 == i * i)
        {
            break;
        }
    }
    if (i >= 12) //Before it would say 12 was the answer so I played around and created this to show that there is no answer
    {
        printf("There is no answer");
    }
    else
    {
        printf("The answer is %d.\n", i);
    }
    return 0;
}
