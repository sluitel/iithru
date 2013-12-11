//
//  ResturantsViewController.h
//  IIThru
//
//  Created by Subash Luitel on 9/26/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Resturants.h"
#import "resturantTypeViewController.h"

@interface ResturantsViewController : UICollectionViewController
@property NSMutableArray *resturantNamesArray;
@property int numberOfResturants;
@property (strong, nonatomic) NSMutableArray *restaurantPictures;

@end
