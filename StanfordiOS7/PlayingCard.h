//
//  PlayingCard.h
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/8.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic,strong) NSString *suit;

@property (nonatomic,assign) NSInteger rank;
+ (NSUInteger)maxRank;
+ (NSArray*)suits;
@end
