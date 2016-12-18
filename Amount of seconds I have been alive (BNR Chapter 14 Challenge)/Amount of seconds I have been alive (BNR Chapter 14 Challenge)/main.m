//
//  main.m
//  Amount of seconds I have been alive (BNR Chapter 14 Challenge)
//
//  Created by Jake Wojtas on 8/27/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
        int main(int argc, const char * argv[])
        {
            @autoreleasepool {
                NSDate *date = [NSDate date];
                NSDateComponents *comps = [[NSDateComponents alloc] init];
                [comps setYear:1990];
                [comps setMonth:6];
                [comps setDay:14];
                [comps setHour:7];
                [comps setMinute:0];
                [comps setSecond:0];
                NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
                NSDate *dateOfBirth = [g dateFromComponents:comps];
                NSLog(@"%f",[date timeIntervalSinceDate:dateOfBirth]);
            }
            return 0;
        }

