//
//  ViewController.m
//  VestelApp
//
//  Created by Koray Gültürk on 24/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView;
@synthesize calendarView;
@synthesize clockView;
@synthesize weatherView;
@synthesize todayInHistoryView;
@synthesize opportunityView;
@synthesize apphorismView;
@synthesize babyNamesView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 690)];
    
    calendarView       = [[CalendarView alloc]initWithFrame:CGRectMake(0, 0, 210, 210)];
    clockView          = [[ClockContainerView alloc]initWithFrame:CGRectMake(210, 0, 110, 110)];
    weatherView        = [[WeatherSmallContainer alloc]initWithFrame:CGRectMake(210, 110, 110, 110)];
    todayInHistoryView = [[TodayInHistoryView alloc]initWithFrame:CGRectMake(0, 220, 320, 110)];
    opportunityView    = [[OpportunityView alloc]initWithFrame:CGRectMake(0, 330, 165, 110)];
    apphorismView      = [[AphorismView alloc]initWithFrame:CGRectMake(165, 330, 165, 110)];
    babyNamesView      = [[BabyNamesView alloc]initWithFrame:CGRectMake(0, 440, 165, 165)];
    
    calendarView.backgroundColor    = [UIColor blackColor];
    calendarView.opaque             = YES;
    
    [scrollView addSubview:calendarView];
    [scrollView addSubview:clockView];
    [scrollView addSubview:weatherView];
    [scrollView addSubview:todayInHistoryView];
    [scrollView addSubview:opportunityView];
    [scrollView addSubview:apphorismView];
    [scrollView addSubview:babyNamesView];

    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
