//
//  Deck.h
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/7.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Card;
@interface Deck : NSObject
- (void)addCard:(Card*)card atTop:(BOOL)atTop;
- (void)addCrad:(Card*)card;
- (Card*)drawRandomCard;
@end
