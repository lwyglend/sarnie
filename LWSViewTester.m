//
//  LWSViewTester.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSViewTester.h"

@implementation LWSViewTester

+(UIButton *)findFirstUIViewIn:(NSArray *)subviews withLabelText:(NSString *)expectedText
{
    NSIndexSet *indexSet = [self findIndexesOfLabelsIn:subviews withLabelText:expectedText];
    if ([indexSet count] == 0) {
        [NSException raise:@"Indexes Set is empty" format:@"No indexes for label text '%@' found", expectedText];
    }
    return [subviews objectAtIndex:[indexSet firstIndex]];
}

+(NSIndexSet *)findIndexesOfLabelsIn:(NSArray *)array withLabelText:(NSString *)labelText
{
    NSIndexSet *subviewsWithLabelText = [array indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop)
                                      {
                                          if ([obj isKindOfClass:[UILabel class]]) {
                                              return [[(UILabel *) obj text] isEqualToString:labelText];
                                          }
                                          return 0;
                                      }];
    return subviewsWithLabelText;
}


+ (void)assertThatFrameOriginAndSizeIsNonZero:(UIView *)view
{
    assertThatInteger(view.frame.size.height, greaterThan(@0));
    assertThatInteger(view.frame.size.width, greaterThan(@0));
    assertThatInteger(view.frame.origin.x, greaterThan(@0));
    assertThatInteger(view.frame.origin.y, greaterThan(@0));
}



@end
