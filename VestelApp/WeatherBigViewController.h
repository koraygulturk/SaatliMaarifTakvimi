//
//  WeatherBigViewController.h
//  VestelApp
//
//  Created by Koray Gültürk on 30/12/13.
//  Copyright (c) 2013 Koray Gültürk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherService.h"

@interface WeatherBigViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *iconViewer;
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *degreesLabel;
- (IBAction)back:(id)sender;

@end
