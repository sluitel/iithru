//
//  MapViewController.h
//  IIThru
//
//  Created by Subash Luitel on 10/8/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
