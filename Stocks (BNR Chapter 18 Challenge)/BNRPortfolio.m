//
//  BNRPortfolio.m
//  Stocks (BNR Chapter 18 Challenge)
//
//  Created by Jake Wojtas on 11/5/16.
//  Copyright (c) 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_portfolio;
}
@end

@implementation BNRPortfolio

- (void)setPortfolio:(NSArray *)p
{
    _portfolio = [p mutableCopy];
}

- (NSArray *)holdings
{
    return [_portfolio copy];
}

- (void)addStockHolding:(BNRStockHolding *)p
{
    if (!_portfolio)
    {
        _portfolio = [[NSMutableArray alloc] init];
    }
    [_portfolio addObject:p];
}

- (void)removeStockHolding:(BNRStockHolding *)p
{
    if (!_portfolio)
    {
        _portfolio = [[NSMutableArray alloc] init];
    }
    [_portfolio removeObject:p];
}

- (void)objectAtPortfolioLocation:(NSUInteger) p
{
    if (!_portfolio)
    {
        _portfolio = [[NSMutableArray alloc] init];
    }
    [_portfolio objectAtIndex:p];
}

- (float)valueOfPortfolio
{
    unsigned int sum = 0;
    for (BNRStockHolding *p in _portfolio)
    {
        sum += [p valueInDollars];
    }
    return sum;
}

- (NSArray *)sortHoldings
{
    NSSortDescriptor *ssh = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    [_portfolio sortUsingDescriptors: @[ssh]];
    return self.holdings;
}

- (NSArray *)topThree
{
    NSSortDescriptor *top = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    NSMutableArray *topThree = [[NSMutableArray alloc] init];
    for(int i = 0; i < self.holdings.count; i++) {
        [topThree addObject:self.holdings[i]];
    }
    [topThree sortUsingDescriptors: @[top]];
    for(NSUInteger i = topThree.count-1; i >= 3; i--) {
        [topThree removeObjectAtIndex:i];
    }
    return [topThree copy];
}






@end
