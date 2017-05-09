

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogicDictionary;
- (void) roll;
- (BOOL) gameOver;
@end
