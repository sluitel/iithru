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
	
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Resturants *resturantCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"resturantCell" forIndexPath:indexPath];
    resturantCell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"IITHRU logo.png no fluff.png"]];
    return resturantCell;
}
@end
