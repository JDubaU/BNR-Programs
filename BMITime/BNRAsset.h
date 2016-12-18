//
//  BNRAsset.h
//  BMITime
//
//  Created by Jake Wojtas on 11/4/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder;

@end
