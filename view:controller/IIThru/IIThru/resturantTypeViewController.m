//
//  resturantTypeViewController.m
//  IIThru
//
//  Created by Subash Luitel on 9/26/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "resturantTypeViewController.h"


@interface resturantTypeViewController ()

@end

@implementation resturantTypeViewController
@synthesize restaurants;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.restaurants.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *howFar = [NSMutableArray arrayWithObjects:@"1.1", @"3.3", @"3.6", @"3.6", @"4.9", @"5.1", @"5.5", nil];
    RestaurantTypeCell *rCell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    //static NSString *CellIdentifier = @"Cell";
    //RestaurantTypeCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
//    if (cell == nil) {
//        cell = [[RestaurantTypeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
    rCell.label.text = restaurants[indexPath.row];
    rCell.subLabel.text = [NSString stringWithFormat:@"%@ miles away",howFar[indexPath.row]];
    rCell.imageView.image = [UIImage imageNamed:@"kfc-coupons.png"];
    return rCell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"food" sender:self];
}

@end
