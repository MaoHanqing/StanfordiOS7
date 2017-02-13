//
//  ViewController.m
//  StanfordiOS7
//
//  Created by 毛汉卿 on 2017/2/7.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"
@interface ViewController ()
@property (nonatomic,strong) Deck *deck;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cards;
@property (nonatomic,strong) CardMatchingGame *game;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(CardMatchingGame *)game{
    if (!_game) {
        _game =[[CardMatchingGame alloc]initWithCardCount:self.cards.count usingDeck:[self creatDeck]];
        _game.matchCards =2;
        
    }
    return _game;
}
-(Deck *)deck{
    if (!_deck) {
        _deck = [self creatDeck];
    }
    return _deck;
}
- (Deck *)creatDeck{
    return  [[PlayingCardDeck alloc]init];
}
- (IBAction)touchButton:(UIButton *)sender {
    
    NSInteger chosenButtonIndex = [self.cards indexOfObject:sender];
    
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
    
}
- (void)updateUI{
    for (UIButton *cardButton in self.cards) {
        NSInteger cardButtonIndex = [self.cards indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
}
- (NSString *)titleForCard:(Card*)card{
    return card.isChosen ? card.contents :@"";
}
- (UIImage*)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed: card.isChosen ? @"imageFont" :@"Image"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
