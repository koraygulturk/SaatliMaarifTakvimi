//
//  BabyNamesItem.m
//  VestelApp
//
//  Created by KORAY on 1/3/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "BabyNamesItem.h"
#import "Baby.h"


@implementation BabyNamesItem
@synthesize babyName;
@synthesize babyIcon;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) setBaby:(Baby *) baby
{
    if ([baby.sex isEqualToString:@"F"])
    {
        babyIcon                = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"babyF.png"]];
    }
    else
    {
        babyIcon                = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"babyM.png"]];
    }
    
    float Xpos                  = (self.bounds.size.width - babyIcon.bounds.size.width) / 2;
    
    babyIcon.frame              = CGRectMake(Xpos, 30, babyIcon.bounds.size.width, babyIcon.bounds.size.height);
    
    [self addSubview:babyIcon];
    
    babyName                    = [[UILabel alloc]initWithFrame:CGRectMake(20, 30, 165, 165)];
    babyName.font               = [UIFont fontWithName:@"Verdana" size:(14)];
    babyName.textColor          = [UIColor grayColor];
    babyName.text               = baby.babyName;
    
    [self addSubview:babyName];
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
