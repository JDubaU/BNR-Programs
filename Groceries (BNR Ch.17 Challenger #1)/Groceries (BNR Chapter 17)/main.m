//
//  main.m
//  Groceries (BNR Chapter 17)
//
//  Created by Jake Wojtas on 9/29/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSString *firstItem = @"Loaf of bread";
        NSString *secondItem = @"Container of Milk";
        NSString *thirdItem = @"Stick of butter";
        NSString *fourthItem = @"Get tea but no coffee, nothing to do with Java";
        
        NSMutableArray *groceryList = [NSMutableArray array];
        
        [groceryList addObject:firstItem];
        [groceryList addObject:secondItem];
        [groceryList addObject:thirdItem];
        [groceryList addObject:fourthItem];
        
        for (NSString *s in groceryList)
        {
            NSLog(@"Items you need to get from grocery list: %@", s);
        }
        
        
        
        
    }
    return 0;
}
