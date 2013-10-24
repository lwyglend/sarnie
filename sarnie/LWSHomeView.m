//
//  LWSHomeView.m
//  sarnie
//
//  Created by Laura Wyglendacz on 08/10/2013.
//  Copyright (c) 2013 Laura Wyglendacz. All rights reserved.
//

#import "LWSHomeView.h"

@interface LWSHomeView ()

@property (nonatomic,strong) UIButton *makeASarnieButton;

@end

@implementation LWSHomeView

-(void)layoutSubviews
{
    [super layoutSubviews];
}

- (UIButton *)setupMakeASarnieButton
{
    if(!_makeASarnieButton) {
        CGRect buttonFrame = CGRectMake(60, 100, 200, 60);
        NSString *buttonText = @"Make a sarnie!";
        _makeASarnieButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_makeASarnieButton setFrame:buttonFrame];
        [_makeASarnieButton setTitle:buttonText forState:UIControlStateNormal] ;
        [_makeASarnieButton setAccessibilityLabel:buttonText];
    }
    return _makeASarnieButton;
}

-(id)init
{
    self = [super init];
    _makeASarnieButton = [self setupMakeASarnieButton];
    [self addSubview:self.makeASarnieButton];
    return self;
}

+(instancetype)homeView
{
    return [[LWSHomeView alloc] init];
}



@end
