//
//  BabyNameService.h
//  VestelApp
//
//  Created by KORAY on 1/3/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"

@interface BabyNameService : NSObject

@property (nonatomic, retain) Baby *baby;
@property (nonatomic, retain) NSArray *babies;

+(BabyNameService *) service;

@end
