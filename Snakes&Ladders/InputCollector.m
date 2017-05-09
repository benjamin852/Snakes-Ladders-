
#import "InputCollector.h"

@implementation InputCollector
+(NSString*) inputString {
    char input [255];
    fgets(input, 255, stdin);
    NSString *inputString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding]
                             stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputString;
}
@end
