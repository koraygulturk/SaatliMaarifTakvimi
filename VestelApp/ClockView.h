//
//  ClockView.h
//  VestelApp
//
//  Created by Koray Gültürk on 27/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ClockView : UIView {
    
    CALayer *containerLayer;
    CALayer *hourHand;
    CALayer *minHand;
    CALayer *secHand;
    NSTimer *timer;
   
}

@property (nonatomic, retain) NSString *selectedTimeZone;

//basic methods
- (void)start;
- (void)stop;

//customize appearence
- (void)setHourHandImage:(CGImageRef)image;
- (void)setMinHandImage:(CGImageRef)image;
- (void)setSecHandImage:(CGImageRef)image;
- (void)setClockBackgroundImage:(CGImageRef)image;

//to customize hands size: adjust following values in .m file
//HOURS_HAND_LENGTH
//MIN_HAND_LENGTH
//SEC_HAND_LENGTH
//HOURS_HAND_WIDTH
//MIN_HAND_WIDTH
//SEC_HAND_WIDTH

@end
