//
//  ZodiacView.m
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "BabyNamesView.h"
#import "BabyNameService.h"
#import "BabyNamesItem.h"

@implementation BabyNamesView
@synthesize babiesContainer;
@synthesize babies;

-(void)didMoveToSuperview
{
    babies                  = [[BabyNameService service] babies];
    BabyNamesItem *baby;
    
    babiesContainer         = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    [self addSubview:babiesContainer];
    
    for (int i = 0; i < babies.count; i++)
    {
        baby                = [[BabyNamesItem alloc]initWithFrame:CGRectMake(i * 165, 0, 165, 165)];
        [baby setBaby:[babies objectAtIndex:i]];
        
        [babiesContainer addSubview:baby];
    }
    
    slideCount              = 0;
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    CGRect maskRect         = CGRectMake(0, 0, 165, 165);
    CGPathRef path          = CGPathCreateWithRect(maskRect, NULL);
    maskLayer.path          = path;
    CGPathRelease(path);
    
    self.layer.mask         = maskLayer;
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
        if (slideCount == -(babies.count -1))
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
    
    babiesContainer.frame       = CGRectMake(value * 165, 0, 165, 165);
    
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
