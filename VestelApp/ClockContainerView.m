//
//  ClockContainerView.m
//  VestelApp
//
//  Created by Koray Gültürk on 27/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "ClockContainerView.h"

@implementation ClockContainerView
@synthesize analogClock;
@synthesize timeZones;
@synthesize cityNames;
@synthesize cityLable;
@synthesize clockContainer;


-(void) didMoveToSuperview
{
    timeZones                       = @[@"Europe/Istanbul", @"Europe/Madrid", @"Europe/Moscow"];
    cityNames                       = @[@"Istanbul", @"Madrid", @"Moscow"];
    
    clockContainer                  = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    [self addSubview:clockContainer];

    [self setClocks];
    
    slideCount                      = 0;
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    CGRect maskRect = CGRectMake(0, 0, 110, 110);
    CGPathRef path = CGPathCreateWithRect(maskRect, NULL);
    maskLayer.path = path;
    CGPathRelease(path);
    self.layer.mask                 = maskLayer;

}

-(void)setClocks
{
    for (int i = 0; i < timeZones.count; i++)
    {
        analogClock                     = [[ClockView alloc]init];
        analogClock.selectedTimeZone    = [timeZones objectAtIndex:i];
        [clockContainer addSubview:analogClock];
        
        analogClock.frame               = CGRectMake(20 + i * 128, 10, 70, 70);
        
        [self setCityLable:[cityNames objectAtIndex:i] getPosition:i];
        
        [analogClock setClockBackgroundImage:[UIImage imageNamed:@"clockBg.png"].CGImage];
        [analogClock setHourHandImage:[UIImage imageNamed:@"hourLine.png"].CGImage];
        [analogClock setMinHandImage:[UIImage imageNamed:@"minuteLine.png"].CGImage];
        [analogClock setSecHandImage:[UIImage imageNamed:@"secondLine.png"].CGImage];
        [analogClock start];
    }
}

-(void) setCityLable:(NSString *)str getPosition:(int)id
{
    cityLable           = [[UILabel alloc]initWithFrame:CGRectMake(25 + id * 128, 80, 100, 20)];
    cityLable.font      = [UIFont fontWithName:@"Arial" size:(10)];
    
    cityLable.text      = str;
    
    [clockContainer addSubview:cityLable];
    [clockContainer endEditing:YES];
    
    self.userInteractionEnabled   = YES;
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipeRigth = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];

    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRigth setDirection:UISwipeGestureRecognizerDirectionRight];
    swipeRigth.numberOfTouchesRequired = 1;
    swipeLeft.numberOfTouchesRequired = 1;
    
    [self addGestureRecognizer:swipeLeft];
    [self addGestureRecognizer:swipeRigth];
}

-(void) handleSwipe:(UISwipeGestureRecognizer *)swipe
{
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if (slideCount == -(cityNames.count -1))
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
    
    clockContainer.frame    = CGRectMake(value * 128, 0, 100, 100);
   // center.x                = center.x - (value * 100);
    
    [UIView commitAnimations];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
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
