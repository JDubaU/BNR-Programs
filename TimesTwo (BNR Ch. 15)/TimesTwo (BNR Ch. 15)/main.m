//
//  main.m
//  TimesTwo (BNR Ch. 15)
//
//  Created by Jake Wojtas on 9/6/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSDate *currentTime = [NSDate date];              //first it was nil to show that it was 0 | NSDate object now exists on the heap
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSDate *startTime = currentTime; //Saves the data of the first time
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        
        sleep(2);
        
        NSLog(@"The address of the original object is %p", startTime);
        
        sleep(2);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
    }
    return 0;
}
