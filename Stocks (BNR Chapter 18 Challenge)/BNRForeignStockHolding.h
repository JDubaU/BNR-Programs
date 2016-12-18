//
//  BNRForeignStockHolding.h
//  Stocks (BNR Chapter 18 Challenge)
//
//  Created by Jake Wojtas on 11/4/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end
