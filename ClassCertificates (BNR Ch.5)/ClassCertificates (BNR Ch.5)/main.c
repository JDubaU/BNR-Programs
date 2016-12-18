//
//  main.c
//  ClassCertificates (BNR Ch.5)
//
//  Created by Jake Wojtas on 7/2/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much as %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])

{
    sleep(2);
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Liz", "iOS", 5);
    
    return 0;
    
}
