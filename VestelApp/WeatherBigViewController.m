//
//  WeatherBigViewController.m
//  VestelApp
//
//  Created by Koray Gültürk on 30/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import "WeatherBigViewController.h"

@interface WeatherBigViewController ()


@end

@implementation WeatherBigViewController
@synthesize iconViewer;
@synthesize mainLabel;
@synthesize descriptionLabel;
@synthesize degreesLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setWeatherIcon:[[WeatherService service] iconPath]];
    [self setMain:[[WeatherService service] main] setDescription:[[WeatherService service] description] setDegrees:[[WeatherService service] degrees]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setWeatherIcon:(NSString *) iconPath
{
    NSString *path              = [NSString stringWithFormat:@"%@%@%@", @"http://openweathermap.org/img/w/", iconPath, @".png"];
    NSURL *url                  = [NSURL URLWithString: path];
    NSData *data                = [NSData dataWithContentsOfURL:url];
    UIImage *image              = [UIImage imageWithData:data];
    
    iconViewer.image            = image;
}

-(void) setMain:(NSString *)main setDescription:(NSString *)description setDegrees:(NSString *)degrees
{
    mainLabel.text              = main;
    descriptionLabel.text       = description;
    degreesLabel.text           = degrees;
}

- (IBAction)back:(id)sender
{
    
}

@end
