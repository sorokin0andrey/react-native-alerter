#import "RNAlerter.h"
#import "RKDropdownAlert.h"
#import <React/RCTConvert.h>

@implementation RNAlerter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSDictionary *)props)
{
  NSString *title = [RCTConvert NSString:props[@"title"]];
  NSString *message = [RCTConvert NSString:props[@"message"]];
  UIColor *backgroundColor = [RCTConvert UIColor:props[@"backgroundColor"]];
  NSNumber *durationValue = [RCTConvert NSNumber:props[@"duration"]];

  NSInteger duration = 4;

  if ([durationValue intValue] != 0) {
    duration = [durationValue intValue] / 1000;
  }

  [RKDropdownAlert title:title message:message backgroundColor:backgroundColor textColor:nil time:duration];
}

@end
