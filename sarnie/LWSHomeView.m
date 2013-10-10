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
        CGRect buttonFrame = CGRectMake(10, 10, 100, 100);
        _makeASarnieButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_makeASarnieButton setFrame:buttonFrame];
        [_makeASarnieButton setTitle:@"Make a sarnie!" forState:UIControlStateNormal] ;
        [_makeASarnieButton setAccessibilityLabel:@"Make a sarnie!"];
    }
    return _makeASarnieButton;
}

-(id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 300, 300)];
    _makeASarnieButton = [self setupMakeASarnieButton];
    [self addSubview:self.makeASarnieButton];
    return self;
}

+(instancetype)homeView
{
    return [[LWSHomeView alloc] init];
}



@end
