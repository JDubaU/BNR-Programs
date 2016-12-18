//
//  main.m
//  TimeAfterTime (BNR Chapter 13)
//
//  Created by Jake Wojtas on 8/25/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDATE object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:4000000];
        NSLog(@"In 4 million seconds it will be %@", later);
        
        NSDate *laterDate = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds the date will be %@", laterDate);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitWeekOfMonth //Changed from CalendarUnit Day to CalendarUnitWeekOfMonth
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is week %lu of the month", day);
        
        
    }
    return 0;
}
