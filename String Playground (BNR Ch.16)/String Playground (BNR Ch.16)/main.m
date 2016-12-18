//
//  main.m
//  String Playground (BNR Ch.16)
//
//  Created by Jake Wojtas on 9/6/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSString *shout = @"I \u2661 New York!";
        NSLog(@" I heard a person say %@", shout);
        
        
        //NSString *dateString = [NSString stringWithFormat:@"The date is %@", now];
    
    }
    return 0;
}
