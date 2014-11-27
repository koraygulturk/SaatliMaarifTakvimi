//
//  HegiraView.h
//  VestelApp
//
//  Created by Koray Gültürk on 26/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HegiraView : UIView

@property (nonatomic, retain) UILabel *MonthName;
@property (nonatomic, retain) UILabel *DayCount;
@property (nonatomic, retain) UILabel *DayName;
@property (nonatomic, retain) NSArray *Months;
@property (nonatomic, retain) NSArray *Days;

@end
