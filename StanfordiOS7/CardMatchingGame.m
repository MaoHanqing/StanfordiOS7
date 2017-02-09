//
//  CardMatchingGame.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/8.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "CardMatchingGame.h"
#import "Card.h"
#import "Deck.h"
@interface CardMatchingGame ()
@property (nonatomic,assign,readwrite) NSInteger score;
@property (nonatomic,strong) NSMutableArray <Card*>*cards;
@end

@implementation CardMatchingGame
-(NSMutableArray<Card *> *)cards{
    if (!_cards) {
        _cards =[[NSMutableArray alloc]init];
    }
    return _cards;
}
-(instancetype)initWithCardCount:(NSInteger)count usingDeck:(Deck *)deck{
    self = [super init];
    if (self) {
        for (int i =0; i<count; i++) {
                    Card *card =[deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            }else{
                self = nil;
                break;
            }
        }
    }
    return self;
}
-(Card *)cardAtIndex:(NSUInteger)index{
    
    return  index<self.cards.count ? self.cards[index] :nil;
}
-(void)chooseCardAtIndex:(NSInteger)index{
    Card *card = [self cardAtIndex:index];
    if (!card.isMatched) {
        
        if (!card.isChosen) {
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMatched) {
                    int matchScore =[card match:@[otherCard]];
                    if (matchScore) {
                        self.score+=matchScore*4;
                        otherCard.matched = YES;
                        card.matched =YES;
                    }else{
                        self.score -= 2;
                        otherCard.chosen =NO;
                    }
                    break;
                    
                }
            }
            self.score -=1;
            
        }
        card.chosen = !card.chosen;
    }
    
    
    
}
@end
