//
//  main.m
//  DateList (BNR Chapter 17)
//
//  Created by Jake Wojtas on 9/23/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        
        //NSArray *dateList = @[now, tomorrow, yesterday]; create an array containit all three
        
        //Create an empty mutable array
        //NSMutableArray *dateList = [NSMutableArray array]; w/out alloc init
        NSMutableArray *dateList = [[NSMutableArray alloc] init];
        
        //Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Adding yesterday to the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        
        
        NSLog(@"Yesterday was %@", dateList[0]);
        NSLog(@"Today is %@", dateList[1]);
        NSLog(@"Tomorrow will be %@", dateList[2]);
        
        NSLog(@"There are %lu dates in the system", [dateList count]);
        
        /* Iterate over an array
        // Iterating is the action of performing an action on each part of an array
        
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++)
        {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
         
        */
        
        //Fast Enumeration
        //Note* When using fast enumeration with an NSMutableArray, you are not allowed to add or remove items while iterating over the array
        
        for (NSDate *d in dateList)
        {
            NSLog(@"Printing Dates: %@", d);
        }
        
        //Removing Yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Not accounting for yesterday, the first date of the sequence is %@", dateList[0]);
        
        
        
    }
    return 0;
}
