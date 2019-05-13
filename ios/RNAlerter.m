#import "RNAlerter.h"
#import "RKDropdownAlert.h"
#import <React/RCTLog.h>

@implementation RNAlerter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSDictionary *)props)
{
  NSString *title = [props objectForKey: @"title"];
  NSString *message = [props objectForKey: @"message"];
  NSString *backgroundColorValue = [props objectForKey: @"backgroundColor"];
  NSNumber *durationValue = [props objectForKey: @"duration"];
  
  UIColor *backgroundColor = nil;
  NSInteger duration = 4;

  if (backgroundColorValue != nil && [backgroundColorValue length] > 0) {
    backgroundColor = [RNAlerter colorFromHexString: backgroundColorValue];
  }

  if ([durationValue intValue] != 0) {
    duration = [durationValue intValue] / 1000;
  }

  [RKDropdownAlert title:title message:message backgroundColor:backgroundColor textColor:nil time:duration];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
