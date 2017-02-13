//
//  Card.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/7.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "Card.h"

@interface Card ()

@end

@implementation Card

-(int)match:(NSArray *)otherCards{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            
            score =1;
        }
    }
    return score;
}
@end
