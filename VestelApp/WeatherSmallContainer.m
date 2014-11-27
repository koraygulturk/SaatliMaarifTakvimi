//
//  WeatherSmallContainer.m
//  VestelApp
//
//  Created by Koray Gültürk on 30/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "WeatherSmallContainer.h"
#import "WeatherService.h"

@implementation WeatherSmallContainer

-(void)didMoveToSuperview
{
    [self setWeaterInfo:[[WeatherService service] description]];
    [self setWeatherIcon:[[WeatherService service] iconPath]];
}

-(void) setWeatherIcon:(NSString *) iconPath
{
    NSString *path              = [NSString stringWithFormat:@"%@%@%@", @"http://openweathermap.org/img/w/", iconPath, @".png"];
    NSURL *url                  = [NSURL URLWithString: path];
    NSData *data                = [NSData dataWithContentsOfURL:url];
    UIImage *image              = [UIImage imageWithData:data];
   
    UIImageView *imageView      = [[UIImageView alloc]initWithImage:image];
    imageView.frame             = CGRectMake(30, 10, 50, 50);
    
    [self addSubview:imageView];
}

-(void)setWeaterInfo:(NSString *)weatherInfo
{
    UILabel *weatherLabel       = [[UILabel alloc]initWithFrame:CGRectMake(30, 70, 100, 20)];
    weatherLabel.text           = weatherInfo;
    weatherLabel.font           = [UIFont fontWithName:@"Arial" size:(10)];
    
    [self addSubview:weatherLabel];
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
