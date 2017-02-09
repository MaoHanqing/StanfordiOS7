//
//  CardMatchingGame.h
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/8.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Deck,Card;
@interface CardMatchingGame : NSObject
@property (nonatomic,assign,readonly) NSInteger score;
- (instancetype)initWithCardCount:(NSInteger)count usingDeck:(Deck*)deck;
- (void)chooseCardAtIndex:(NSInteger)index;
- (Card*)cardAtIndex:(NSUInteger)index;

@end
