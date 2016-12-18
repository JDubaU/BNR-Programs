//
//  main.m
//  Interesting Names (BNR Chapter 17 Challenge #2)
//
//  Created by Jake Wojtas on 9/29/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        NSString *nameDatabase = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
        //NSLog(@"%@", nameDatabase);
        NSArray *names = [nameDatabase componentsSeparatedByString:@"\n"];
        
        NSString *dictDatabase = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
        NSArray *dict = [dictDatabase componentsSeparatedByString:@"\n"];
               
        NSUInteger nameCount = [names count];
        
        NSUInteger dictCount = [dict count];
        
        int correctCounter = 0;
        
        //Make sure to come back here and insert recursion to make the program run faster
        
        NSDate *now = [[NSDate alloc] init];
        for (int i = 0; i < nameCount; i++)
        {
            for (int j = 0; j < dictCount; j++)
            {
                if ([dict[j] isEqualToString:names[i]])
                {
                    NSLog(@"%@ is both a name and a word of the english dictionary", dict[j]);
                    correctCounter++;
                    break;
                }
            }
            
        }
        NSDate *later = [[NSDate alloc] init];
        NSTimeInterval timeInterval = [now timeIntervalSinceDate:later];
        int secondsBetween = abs(timeInterval);
        sleep(1);
        NSLog(@"This program took %d seconds to run", secondsBetween);
        sleep(1);
        NSLog(@"There are %d words that are both names and words of the english dictionary", correctCounter);
    }
    return 0;
}
