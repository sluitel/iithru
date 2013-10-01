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
    _numberOfResturants = 50;
    _resturantNamesArray = [[NSMutableArray alloc] init];
        for (int i=1; i<=_numberOfResturants; i++) {
        [_resturantNamesArray addObject:[NSString stringWithFormat:@"Restaurant %i",i]];
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _numberOfResturants;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Resturants *resturantCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"resturantCell" forIndexPath:indexPath];
    resturantCell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"IITHRU logo.png no fluff.png"]];
    return resturantCell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"restaurantType"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        resturantTypeViewController *destViewController = segue.destinationViewController;
        NSIndexPath *index = [indexPaths objectAtIndex:0];
        destViewController.navigationItem.title = _resturantNamesArray[index.row];
    }
}

@end
