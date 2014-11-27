//
//  ClockContainerView.h
//  VestelApp
//
//  Created by Koray Gültürk on 27/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClockView.h"

@interface ClockContainerView : UIView <UIGestureRecognizerDelegate>
{
    CGPoint startPoint;
    int slideCount;
}

@property (nonatomic, retain) NSArray *timeZones;
@property (nonatomic, retain) NSArray *cityNames;
@property (nonatomic, retain) ClockView *analogClock;
@property (nonatomic, retain) UIView *clockContainer;
@property (nonatomic, retain) UILabel *cityLable;

-(void) setCityLable:(NSString *)str getPosition:(int)id;

@end
