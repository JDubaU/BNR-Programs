//
//  main.c
//  Adressess (BNR Ch.9)
//
//  Created by Jake Wojtas on 8/2/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    return 0;
}


//leftover code
//printf("this function starts at %p\n", main);
//printf("the int stored at addressOfI is %d\n", *addressOfI);