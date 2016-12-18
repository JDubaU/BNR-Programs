//
//  main.m
//  Stringz (BNR Chapter 26)
//
//  Created by Jake Wojtas on 11/30/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++)
        {
            [str appendString:@"Aaron is cool!\n"];
        }
        [str writeToFile:@"/tmp/cool/.txt"
              atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"done writing /tmp/cool.txt");
        
        NSError *error;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        if (success)
        {
            NSLog(@"done writing /tmp/cool.txt");
        }
        else
        {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
