

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player = [[Player alloc] init];
        while (true) {
            NSLog(@"roll the dice");
            NSString *inputString = [InputCollector inputString];
            if ([inputString isEqualToString:@"roll"]) {
                [player roll];
                [player gameOver];
            }
            if ([player gameOver]) {
                break;
            }
            
        }
    }
    return 0;
}
