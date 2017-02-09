//
//  PlayingCard.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/8.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "PlayingCard.h"




@implementation PlayingCard
@synthesize suit =_suit;
-(NSString *)contents{
    NSArray *ranks =[PlayingCard ranks];
    return [ranks[self.rank] stringByAppendingString:self.suit];
}
-(void)setSuit:(NSString *)suit{
    if ([[PlayingCard suits] containsObject:suit]) {
        _suit =suit;
    }
}
-(NSString *)suit{
    return _suit ? :@"?";
}
-(int)match:(NSArray *)otherCards{
    int score = 0;
    if ([otherCards count]==1) {
        PlayingCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score = 4;
        }else if ([otherCard.suit isEqualToString:self.suit]){
            score = 1;
        }
    }
    return score;
}
#pragma mark - tool
//工具类用+方法
+ (NSArray*)suits{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}
+ (NSArray*)ranks{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger)maxRank{
    return [self ranks].count -1;
}
@end
