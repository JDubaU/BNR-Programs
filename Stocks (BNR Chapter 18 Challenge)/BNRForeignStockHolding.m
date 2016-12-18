//
//  BNRForeignStockHolding.m
//  Stocks (BNR Chapter 18 Challenge)
//
//  Created by Jake Wojtas on 11/4/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding


- (float) costInDollars
{
    float cost = [super costInDollars];
    float conversionCost = [self conversionRate];
    return conversionCost * cost;
}

- (float) valueInDollars
{
    float value = [super valueInDollars];
    float conversionValue = [self conversionRate];
    return conversionValue * value;
}

@end
