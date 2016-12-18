//
//  BNRLogger.m
//  Callbacks
//
//  Created by Jake Wojtas on 12/4/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    //Create a mutable data if it does not already exist
    if (!incomingData)
    {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// Called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *connectionString = [[NSString alloc] initWithData:incomingData encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [connectionString length]);
    
    // Uncomment the next line to see the entire fetched file
    // NSLog(@"The whole string is %@", connectionString);
}

// Called if the fetch fails
- (void)connection:(NSURLConnection *) connection
  didFailWithError:(NSError *) error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}
@end
