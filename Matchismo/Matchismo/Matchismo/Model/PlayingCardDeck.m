//
//  PlayingCardDeck.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/8.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck
-(instancetype)init{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard suits]) {
            for (int i =1; i<=[PlayingCard maxRank]; i++) {
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank =i;
                card.suit = suit;
                [self addCrad:card];
            }
        }
    }
    return self;
}
@end
