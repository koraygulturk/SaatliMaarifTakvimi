//
//  ChristianView.m
//  VestelApp
//
//  Created by Koray Gültürk on 26/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "ChristianView.h"

@implementation ChristianView
@synthesize MonthName;
@synthesize DayCount;
@synthesize DayName;
@synthesize Months;
@synthesize Days;

-(void)didMoveToSuperview
{
    CGRect bounds           = CGRectMake(0, 0, 80, 80);
    
    Months                  = @[@"Ocak ", @"Şubat ", @"Mart ", @"Nisan ", @"Mayıs ", @"Haziran ", @"Temmuz ", @"Ağustos ", @"Eylül ", @"Ekim ", @"Kasım ", @"Aralık "];
    
    Days                    = @[ @"Pazar", @"Pazartesi", @"Salı", @"Çarşamba", @"Perşembe", @"Cuma", @"Cumartesi"];
    
    MonthName               = [[UILabel alloc] initWithFrame:bounds];
    DayCount                = [[UILabel alloc] initWithFrame:bounds];
    DayName                 = [[UILabel alloc] initWithFrame:bounds];
    
    [self addSubview:MonthName];
    [self addSubview:DayCount];
    [self addSubview:DayName];
    
    NSDate *date            = [NSDate date];
    NSCalendar *gregorian   = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [gregorian components:(NSDayCalendarUnit|NSMonthCalendarUnit|NSYearCalendarUnit|NSWeekdayCalendarUnit) fromDate:date];
    NSInteger day           = [dateComponents day];
    NSInteger month         = [dateComponents month];
    NSInteger year          = [dateComponents year];
    NSInteger weekday       = [dateComponents weekday];
    
    MonthName.frame         = CGRectMake(5, 20, 210, 30);
    DayCount.frame          = CGRectMake(5, 0, 210, 200);
    DayName.frame           = CGRectMake(5, 150, 210, 30);
    
    NSString *monthNameText = [Months objectAtIndex:month - 1];
    NSString *yearText      = [@(year) description];
    NSString *monthAndYear  = [monthNameText stringByAppendingString:yearText];
    
    MonthName.text          = monthAndYear;
    
    NSString *dayCountText  = [@(day) description];
    DayCount.text           = dayCountText;
    DayCount.font           = [UIFont fontWithName:@"Verdana" size:(70)];
    
    NSString *dayOfWeek     = [Days objectAtIndex:weekday - 1];
    DayName.text            = dayOfWeek;
    
    MonthName.textColor     = [UIColor whiteColor];
    DayCount.textColor      = [UIColor whiteColor];
    DayName.textColor       = [UIColor whiteColor];
    
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
