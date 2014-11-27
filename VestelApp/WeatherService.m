//
//  WeatherService.m
//  VestelApp
//
//  Created by Koray Gültürk on 31/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "WeatherService.h"

@implementation WeatherService
@synthesize main;
@synthesize description;
@synthesize degrees;
@synthesize iconPath;

+(WeatherService *)service
{
    static WeatherService *service = nil;
    
    if (!service)
    {
        service             = [[super allocWithZone:nil]init];
    }
    
    return service;
}

+(id)allowWithZone:(NSZone *)zone
{
    return [self service];
}

-(id)init
{
    self                    = [super init];
    
    if (self)
    {
        [self getDataFromJSON];
    }
    
    return self;
}

-(void) getDataFromJSON
{
    NSURL * url                     = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=Istanbul"];
    NSData * data                   = [NSData dataWithContentsOfURL:url];
    NSError * error;
    
    NSMutableDictionary  * json     = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &error];
    
    NSArray * weatherArr            = json[@"weather"];
    //NSArray * mainArr               = json[@"main"];
    
    for (NSDictionary * weatherDict in weatherArr)
    {
        main                        = [weatherDict valueForKey:@"main"];
        description                 = [weatherDict valueForKey:@"description"];
        iconPath                    = [weatherDict valueForKey:@"icon"];
    }
}

@end
