//
//  CalendarView.h
//  VestelApp
//
//  Created by Koray Gültürk on 24/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HegiraView.h"
#import "ChristianView.h"

@interface CalendarView : UIView
{
    CGPoint startPoint;
    int slideCount;
}

@property (nonatomic, retain) HegiraView *HegiraView;
@property (nonatomic, retain) ChristianView *ChristianView;
@property (nonatomic,retain) UIView *calendarContainer;
@property (nonatomic, retain) NSString *calendarType;


@end
