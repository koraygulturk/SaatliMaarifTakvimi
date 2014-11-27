//
//  BabyNameService.m
//  VestelApp
//
//  Created by KORAY on 1/3/14.
//  Copyright (c) 2014 Koray Gültürk. All rights reserved.
//

#import "BabyNameService.h"
#import "Baby.h"

@implementation BabyNameService
@synthesize baby;
@synthesize babies;

+(BabyNameService *)service
{
    static BabyNameService *service = nil;
    
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
    NSURL * url                     = [NSURL URLWithString:@"http://demo.afflications.com/people/kgulturk/names.json"];
    NSData * data                   = [NSData dataWithContentsOfURL:url];
    NSError * error;
    
    NSMutableDictionary  * json     = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &error];
    
    NSArray * namesArr              = json[@"names"];
    
    NSMutableArray *babyArr         = [[NSMutableArray alloc]initWithObjects:nil];
    
    for (NSDictionary * namesDict in namesArr)
    {
        baby                        = [[Baby alloc]init];
        baby.babyName               = [namesDict valueForKey:@"name"];
        baby.sex                    = [namesDict valueForKey:@"sex"];
        
        [babyArr addObject:baby];
    }
    
    babies                          = babyArr;
}

@end
