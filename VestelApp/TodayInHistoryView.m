//
//  TodayInHistoryView.m
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "TodayInHistoryView.h"
#import "TodayInHistoryItem.h"

@implementation TodayInHistoryView
@synthesize title;
@synthesize historyIcon;
@synthesize scrollView;

-(void) didMoveToSuperview
{
    [self setTitle];
}

-(void)setTitle
{
    historyIcon             = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"history.png"]];
    [self addSubview:historyIcon];
    
    historyIcon.frame       = CGRectMake(10, 10, 20, 20);
    
    title                   = [[UILabel alloc]initWithFrame:CGRectMake(35, 5, 300, 30)];
    title.text              = @"Tarihte bugün";
    title.font              = [UIFont fontWithName:@"Verdana" size:(10)];
    
    [self addSubview:title];
    
    CGRect line             = CGRectMake(10, 35, 300, 1);
    UIView *lineView        = [[UIView alloc]initWithFrame:line];
    lineView.backgroundColor= [UIColor grayColor];
    [self addSubview:lineView];
    
    [self setList];
}

-(void)setList
{
    NSArray *listArr        = @[@"item 1", @"item 2", @"item 3", @"item 4", @"item 5"];
    
    TodayInHistoryItem *item;
    
    scrollView              = [[UIScrollView alloc]initWithFrame:CGRectMake(10, 35, self.bounds.size.width, self.bounds.size.height - 55)];
    
    for (int i = 0; i < listArr.count; i++)
    {
        item                = [[TodayInHistoryItem alloc]initWithFrame:CGRectMake(0, i * 20, 250, 30)];
        
        [item setItem:[listArr objectAtIndex:i]];
        [scrollView addSubview:item];
    }
    
    scrollView.contentSize  = CGSizeMake(self.bounds.size.width, self.bounds.size.height);
    
    [self addSubview:scrollView];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        // Initialization code
    }
    
    return self;
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
