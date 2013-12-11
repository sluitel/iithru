//
//  ResturantsViewController.m
//  IIThru
//
//  Created by Subash Luitel on 9/26/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "ResturantsViewController.h"

@interface ResturantsViewController ()

@end

@implementation ResturantsViewController

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _numberOfResturants = 14;
    _resturantNamesArray = [[NSMutableArray alloc] initWithObjects:@"White Castle", @"Arby's", @"Burger King", @"Chick-fil-A", @"Dairy Queen", @"KFC", @"McDonald's", @"Pizza Hut", @"Popeyes", @"Long John Silvers", @"Quiznos", @"Subway", @"Taco Bell", @"Ignore", nil];
    _restaurantPictures = [[NSMutableArray alloc] init];
        for (int i=0; i<_numberOfResturants; i++) {
            [_restaurantPictures addObject:[NSString stringWithFormat:@"pic%i",i]];
            //[_resturantNamesArray addObject:[NSString stringWithFormat:@"Restaurant %i",i]];
    }
    [self setNeedsStatusBarAppearanceUpdate];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 14;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Resturants *resturantCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"resturantCell" forIndexPath:indexPath];
    for (int i=0; i<_numberOfResturants; i++) {
        NSString  *pictureName = _restaurantPictures[indexPath.row];
        resturantCell.imageView.image = [UIImage imageNamed:pictureName]; //[NSString stringWithFormat:@"IITHRU logo.png no fluff.png"]];
    }
    
    return resturantCell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"restaurantType"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        resturantTypeViewController *destViewController = segue.destinationViewController;
        NSIndexPath *index = [indexPaths objectAtIndex:0];
        destViewController.navigationItem.title = _resturantNamesArray[index.row];
        if ([_resturantNamesArray[index.row]  isEqual: @"KFC"]) {
            NSMutableArray *restaurants = [NSMutableArray arrayWithObjects:@"300 East 35th Street", @"3696 S Archer Avenue", @"1144 S Western Avenue", @"7 E Garfield Blvd.", @"4758 S Kedzie Ave", @"5852 S Western Ave", @"1600 W Marquette Rd", nil];
            destViewController.restaurants = restaurants;
        }
    }
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
