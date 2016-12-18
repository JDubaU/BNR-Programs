//
//  BNRPortfolio.h
//  Stocks (BNR Chapter 18 Challenge)
//
//  Created by Jake Wojtas on 11/5/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRPortfolio : BNRStockHolding

@property (nonatomic, copy) NSArray *holdings;
- (NSArray *)sortHoldings;
- (NSArray *)topThree;
- (float)valueOfPortfolio;
- (void)addStockHolding:(BNRStockHolding *)p;
- (void)removeStockHolding:(BNRStockHolding *)p;
- (void)objectAtPortfolioLocation:(NSUInteger)p;


@end
