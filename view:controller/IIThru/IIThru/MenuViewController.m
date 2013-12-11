//
//  MenuViewController.m
//  IIThru
//
//  Created by Subash Luitel on 10/23/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 5;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2) {
        return 4;
    }
    else if (section == 3) {
        return 2;
    }
    else if (section == 4) {
        return 2;
    }
    else
        return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"MenuCell"];
    if (indexPath.section == 0) {
        NSArray *array0 = [NSArray arrayWithObjects:@"Original Recipe", @"Original Recipe Boneless", @"Extra Crispy", @"Kentucky Grilled Chicken", @"Extra Crispy Tenders", nil];
        cell.textLabel.text = array0[indexPath.row];
    }
    else if (indexPath.section == 1) {
        NSArray *array1 = [NSArray arrayWithObjects:@"Doublicious", @"Chicken Littles", nil];
        cell.textLabel.text = array1[indexPath.row];
    }
    else if (indexPath.section == 2) {
        NSArray *array2 = [NSArray arrayWithObjects:@"Mashed Potatoes", @"Cole Slaw", @"Mac & Cheese", @"Wedges", nil];
        cell.textLabel.text = array2[indexPath.row];
    }
    else if (indexPath.section == 3) {
        NSArray *array3 = [NSArray arrayWithObjects:@"Famous Bowl", @"Pot Pie", nil];
        cell.textLabel.text = array3[indexPath.row];
    }
    else if (indexPath.section == 4) {
        NSArray *array4 = [NSArray arrayWithObjects:@"Chocolate Chip Cake", @"Chocolate Chip Cookie", nil];
        cell.textLabel.text = array4[indexPath.row];
    }
    else
    cell.textLabel.text = @"Chukwudi's Special Jollof";
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d %d", indexPath.section, indexPath.row);
    [self performSegueWithIdentifier:@"food" sender:self];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *headerArray = [NSArray arrayWithObjects:@"Chicken", @"Sandwiches", @"Sides", @"Classics", @"Desserts", nil];
    return [headerArray objectAtIndex:section];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"food"]) {
        FoodDescriptionViewController *destViewController = segue.destinationViewController;
        //destViewController.foodName = @"Sample food";
        destViewController.navigationItem.title = @"Food Details";
    }
}


@end
