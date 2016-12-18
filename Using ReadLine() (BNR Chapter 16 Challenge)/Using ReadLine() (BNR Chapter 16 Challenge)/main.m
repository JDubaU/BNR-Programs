//
//  main.m
//  Using ReadLine() (BNR Chapter 16 Challenge)
//
//  Created by Jake Wojtas on 9/21/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#include <readline/readline.h>
#include <readline/history.h>
#include <editline/readline.h>


/* Challenge #1
 localizedCaseInsensitiveContains(String) performs a case-insensitive search
 class func localizedName(of: UInt) returns actual portion of the string that was found
*/


int main(int argc, const char * argv[])

{
    @autoreleasepool
    {
        int num = 5;
        do
        {
        char str[100] = {0};  //initializes string
        NSLog(@"Who is the coolest person?");
        scanf("%s", str);
        NSString *nameofPerson = ([NSString stringWithUTF8String:str]);
        NSLog(@"%@ is the coolest person", nameofPerson);  //Find how to do this w/ white spaces
        sleep(1);
        num--;
        }while (num > 0);
        NSLog(@"Thank you for telling us who's the coolest");
        
        sleep(2);
        
        NSLog(@"Now please enter an integer between 1 and 100");
        
        NSLog(@"Enter your Number!");
        NSString *readNum = [NSString stringWithUTF8String:readline(NULL)];
        NSInteger number = [readNum integerValue];
        
        for (number = number; number >= 0; number--)
        {
            if (number % 3 == 0)
            {
                NSLog(@"found one");
            }
        }
        
    }
    return 0;
}
