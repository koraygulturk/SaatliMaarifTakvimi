//
//  TodayInHistoryItem.m
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "TodayInHistoryItem.h"

@implementation TodayInHistoryItem
@synthesize title;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setItem:(NSString *)itemTitle
{
    UIView  *box        = [[UILabel alloc]initWithFrame:CGRectMake(5, 10, 3, 3)];
    box.backgroundColor = [UIColor grayColor];
    [self addSubview:box];
    
    title               = [[UILabel alloc]initWithFrame:CGRectMake(20, 1, 250, 20)];
    title.font          = [UIFont fontWithName:@"Verdana" size:(9)];
    title.textColor     = [UIColor grayColor];
    title.text          = itemTitle;
    
    [self addSubview:title];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
