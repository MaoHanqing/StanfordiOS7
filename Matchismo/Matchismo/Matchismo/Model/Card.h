//
//  Card.h
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/7.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong,nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
-(int)match:(NSArray *)otherCards;

@end
