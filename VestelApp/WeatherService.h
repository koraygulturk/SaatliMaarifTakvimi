//
//  WeatherService.h
//  VestelApp
//
//  Created by Koray Gültürk on 31/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherService : NSObject

@property (nonatomic, strong) NSString *main;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *degrees;
@property (nonatomic, strong) NSString *iconPath;

+(WeatherService *)service;

@end
