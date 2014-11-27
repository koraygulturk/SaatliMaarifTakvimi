//
//  BabyNamesItem.h
//  VestelApp
//
//  Created by KORAY on 1/3/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Baby.h"

@interface BabyNamesItem : UIView

@property (nonatomic, retain) UILabel *babyName;
@property (nonatomic, retain) UIImageView *babyIcon;

-(void) setBaby:(Baby *) baby;

@end
