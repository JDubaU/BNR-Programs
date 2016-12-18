//
//  BNRLogger.h
//  Callbacks
//
//  Created by Jake Wojtas on 12/4/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
    <NSURLConnectionDataDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *incomingData;
}

@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error;
- (void)zoneChange:(NSNotification *)note;





@end
