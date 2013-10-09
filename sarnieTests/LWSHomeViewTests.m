//
//  LWSHomeViewTests.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrest.h>
#import "LWSViewTester.h"
#import "LWSHomeViewTests.h"
#import "LWSHomeView.h"

@interface LWSHomeViewTests ()

@property (nonatomic) LWSHomeView *homeView;

@end

@implementation LWSHomeViewTests

-(void)setUp
{
    _homeView = [[LWSHomeView alloc]init];
}

//-(void)testMakeASarnieButtonIsDisplayedWithCorrectText
//{
//    //given
//    NSString *expectedMakeASarnieButtonText = @"Make a sarnie!";
//    
//    //when
//    
//    //then
//    UIView *view = [LWSViewTester findFirstUIViewIn:self.homeView.subviews withAccessibilityLabelText:expectedMakeASarnieButtonText];
//    [LWSViewTester assertThatFrameOriginAndSizeIsNonZero:view];
//    assertThat([view class], is([UIButton class]));
//}

@end
