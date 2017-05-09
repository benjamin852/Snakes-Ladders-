

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogicDictionary = @{@(4): @(14),
                                 @(9): @(31),
                                 @(20): @(38),
                                 @(28): @(84),
                                 @(40): @(59),
                                 @(51): @(67),
                                 @(63): @(81),
                                 @(17): @(7),
                                 @(64): @(60),
                                 @(89): @(26),
                                 @(95): @(75),
                                 @(99): @(78)};
                                 
            
    }
    

    return self;
}
- (void) roll {
    NSInteger randomValue = arc4random_uniform(6)+1;
    NSLog(@"%ld", randomValue);
    
    
    self.currentSquare = self.currentSquare + randomValue;
    NSLog(@"%ld", self.currentSquare);
    
    NSInteger specialSquare = self.currentSquare;
    NSNumber *speciaSquareNSNumber = [NSNumber numberWithInteger:specialSquare];
    
    if ([self.gameLogicDictionary objectForKey:speciaSquareNSNumber]) {
        NSInteger specialSquareInteger = [[self.gameLogicDictionary objectForKey:speciaSquareNSNumber]integerValue];
        if (self.currentSquare<specialSquareInteger) {
            NSLog(@"Move up from square %ld to square %ld",self.currentSquare, specialSquareInteger);
            self.currentSquare = specialSquareInteger;
        } else if (self.currentSquare>specialSquareInteger) {
            NSLog(@"Move down from square %ld to square %ld",self.currentSquare, specialSquareInteger);
            self.currentSquare = specialSquareInteger;
        }
    }
}

- (BOOL) gameOver {
    if (self.currentSquare >= 100) {
        NSLog(@"You Win!");
        return YES;
    } else {
        NSLog(@"Keep playing");
        return  NO;
    }
}
@end
