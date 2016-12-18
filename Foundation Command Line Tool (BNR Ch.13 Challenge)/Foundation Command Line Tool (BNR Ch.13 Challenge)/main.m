//
//  main.m
//  Foundation Command Line Tool (BNR Ch.13 Challenge)
//
//  Created by Jake Wojtas on 8/25/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//  Credit to BNR Forums

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])

{
    @autoreleasepool
    {
        NSHost *host = [NSHost currentHost];
        
        NSLog(@"The current host is %@", host);
        
        NSString *localizedName = [host localizedName];
        
        NSLog(@"The localized name is %@", localizedName);
        
        
    }
    return 0;
}
