//
//  CalendarView.m
//  VestelApp
//
//  Created by Koray Gültürk on 24/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "CalendarView.h"

@implementation CalendarView
@synthesize calendarContainer;

-(void)didMoveToSuperview
{
    self.calendarType           = @"christian";
   
    CGRect bounds               = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    
    self.ChristianView          = [[ChristianView alloc]initWithFrame:bounds];
    self.HegiraView             = [[HegiraView alloc]initWithFrame:bounds];
    self.calendarContainer      = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.ChristianView.bounds.size.width, self.ChristianView.bounds.size.height)];

    [self.calendarContainer addSubview:self.ChristianView];
    [self.calendarContainer addSubview:self.HegiraView];
    
    [self addSubview:self.calendarContainer];
    
    self.HegiraView.frame       = CGRectMake(self.bounds.size.width, 0, self.bounds.size.width, self.bounds.size.height);
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipeRigth = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRigth setDirection:UISwipeGestureRecognizerDirectionRight];
    swipeRigth.numberOfTouchesRequired = 1;
    swipeLeft.numberOfTouchesRequired = 1;
    
    [self addGestureRecognizer:swipeLeft];
    [self addGestureRecognizer:swipeRigth];
    
    

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self)
    {
        
    }
    return self;
}

-(void)handleSwipe:(UISwipeGestureRecognizer *)swipe
{
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if (slideCount == -1)
        {
            return;
        }
        
        slideCount--;
    }
    else if (swipe.direction == UISwipeGestureRecognizerDirectionRight)
    {
        if (slideCount == 0)
        {
            return;
        }
        
        slideCount++;
    }
    
    [self animation:slideCount];
}

-(void)animation:(float)value
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    
    calendarContainer.frame    = CGRectMake(value * self.bounds.size.width, 0, 100, 100);
    
    [UIView commitAnimations];
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
