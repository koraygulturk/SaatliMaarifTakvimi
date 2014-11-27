//
//  ViewController.h
//  VestelApp
//
//  Created by Koray Gültürk on 24/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CLLocationManagerDelegate.h>

#import "CalendarView.h"
#import "ClockContainerView.h"
#import "WeatherSmallContainer.h"
#import "TodayInHistoryView.h"
#import "OpportunityView.h"
#import "AphorismView.h"
#import "BabyNamesView.h"

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, retain) CalendarView *calendarView;
@property (nonatomic, retain) ClockContainerView *clockView;
@property (nonatomic, retain) WeatherSmallContainer *weatherView;
@property (nonatomic, retain) TodayInHistoryView *todayInHistoryView;
@property (nonatomic, retain) OpportunityView *opportunityView;
@property (nonatomic, retain) AphorismView *apphorismView;
@property (nonatomic, retain) BabyNamesView *babyNamesView;

@end
