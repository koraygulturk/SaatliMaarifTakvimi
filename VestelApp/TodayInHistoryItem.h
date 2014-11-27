//
//  TodayInHistoryItem.h
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodayInHistoryItem : UIView

@property (nonatomic, retain) UILabel *title;

-(void) setItem:(NSString*)itemTitle;

@end
