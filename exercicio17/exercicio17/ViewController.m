//
//  ViewController.m
//  exercicio17
//
//  Created by Targettrust Treinamentos on 12/15/14.
//  Copyright (c) 2015 Targettrust Treinamentos. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController () <CLLocationManagerDelegate>
@property (nonatomic, strong) CLLocationManager *locationManager;
@end
@implementation ViewController

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation{
    /* We received the new location */
    NSLog(@"Latitude = %f", newLocation.coordinate.latitude);
    NSLog(@"Longitude = %f", newLocation.coordinate.longitude);
}
- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error{
    /* Failed to receive user's location */
}
- (void)viewDidLoad {
    [super viewDidLoad];
    if ([CLLocationManager locationServicesEnabled]){
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        [self.locationManager startUpdatingLocation];
    } else {
        /* Location services are not enabled.
         Take appropriate action: for instance, prompt the
         user to enable the location services */
        NSLog(@"Location services are not enabled");
    }
}

@end
