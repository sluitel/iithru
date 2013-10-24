//
//  IPROViewController.m
//  Mapstest
//
//  Created by William Bafia on 10/7/13.
//  Copyright (c) 2013 Illinois Institute of Technology. All rights reserved.
//

#import "IPROViewController.h"

@interface IPROViewController ()

@end

@implementation IPROViewController

@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView.delegate = self;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 1000, 1000);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
