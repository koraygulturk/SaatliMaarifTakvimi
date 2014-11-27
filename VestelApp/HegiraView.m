//
//  HegiraView.m
//  VestelApp
//
//  Created by Koray Gültürk on 26/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "HegiraView.h"

@implementation HegiraView
@synthesize MonthName;
@synthesize DayCount;
@synthesize DayName;
@synthesize Months;
@synthesize Days;

-(void)didMoveToSuperview
{
    CGRect bounds           = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    
    MonthName               = [[UILabel alloc] initWithFrame:bounds];
    DayCount                = [[UILabel alloc] initWithFrame:bounds];
    DayName                 = [[UILabel alloc] initWithFrame:bounds];
    
    Months                  = @[@"Muharrem ", @"Safer ", @"Rebiülevvel ", @"Rebiülahir ", @"Cemaziyelevvel ", @"Cemaziyelahir ", @"Recep ", @"Şaban ", @"Ramazan ", @"Şevval ", @"Zilkade ", @"Zilhicce "];
    
    Days                    = @[@"Pazar", @"Pazartesi", @"Salı", @"Çarşamba", @"Perşembe", @"Cuma", @"Cumartesi"];
    
    [self addSubview:MonthName];
    [self addSubview:DayCount];
    [self addSubview:DayName];
    
    
    NSDate *date            = [NSDate date];
    NSCalendar *hegira      = [[NSCalendar alloc]initWithCalendarIdentifier:NSIslamicCalendar];
    NSDateComponents *dateComponents = [hegira components:(NSDayCalendarUnit|NSMonthCalendarUnit|NSYearCalendarUnit|NSWeekdayCalendarUnit) fromDate:date];
    NSInteger day           = [dateComponents day];
    NSInteger month         = [dateComponents month];
    NSInteger year          = [dateComponents year];
    NSInteger weekday       = [dateComponents weekday];
       
    NSString *monthNameText = [Months objectAtIndex:month - 1];
   
    NSString *yearText      = [@(year) description];
    NSString *monthAndYear  = [monthNameText stringByAppendingString:yearText];
    
    MonthName.text          = monthAndYear;
    
    NSString *dayCountText  = [@(day) description];
    DayCount.text           = dayCountText;
    DayCount.font           = [UIFont fontWithName:@"Verdana" size:(70)];
    
    NSString *dayOfWeek     = [Days objectAtIndex:weekday - 1];
    DayName.text            = dayOfWeek;
    
    MonthName.textAlignment = NSTextAlignmentCenter;
    
    MonthName.frame         = CGRectMake(5, 20, 210, 30);
    DayCount.frame          = CGRectMake(5, 0, 210, 200);
    DayName.frame           = CGRectMake(5, 150, 210, 30);

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
