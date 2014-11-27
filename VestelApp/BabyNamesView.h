//
//  ZodiacView.h
//  VestelApp
//
//  Created by KORAY on 1/2/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BabyNamesView : UIView
{
    int slideCount;
}

@property (nonatomic, retain) UIView *babiesContainer;
@property (nonatomic, retain) NSArray *babies;

@end
