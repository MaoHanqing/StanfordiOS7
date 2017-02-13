//
//  Deck.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/7.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck ()
@property (nonatomic,strong) NSMutableArray <Card*> *cards;

@end

@implementation Deck
-(NSMutableArray<Card *> *)cards{
    if (!_cards) {
        _cards =[[NSMutableArray alloc]init];
    }
    return _cards;
}
-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}
-(void)addCrad:(Card *)card{
    [self addCard:card atTop:NO];
}
-(Card *)drawRandomCard{
    Card *drawCard =nil;
    if (self.cards.count) {
        NSInteger index = arc4random()%self.cards.count;
        drawCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return drawCard;
}
@end
