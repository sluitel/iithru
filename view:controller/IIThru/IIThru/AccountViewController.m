//
//  AccountViewController.m
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _foodNameArray = [[NSMutableArray alloc] initWithObjects:@"Original Recepie", @"Doublicious", @"Mac & Cheese", @"Chocolate Chip Cake", nil];
    _priceArray = [[NSMutableArray alloc] init];
    _quantityArray = [[NSMutableArray alloc] init];
	_appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [_appDelegate managedObjectContext];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Cart"
                                              inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setFetchBatchSize:20];
    [request setEntity:entity];
    NSError *error;
    NSMutableArray *results = [[context executeFetchRequest:request
                                                      error:&error] mutableCopy];
    [self setArray:results];
//    for (int i=0; i<sizeof(_array); i++) {
//        Cart *info = [_array lastObject];
//        //NSLog(info.foodName);
//        //NSString *temp = info.foodName;
//       // if (info.foodName != nil ) {
// //           [_foodNameArray addObject:info.foodName];
////            [_priceArray addObject:info.price];
////            [_quantityArray addObject:info.quantity];
//
//       // }
//        
//    }

}

//- (void)viewDidAppear:(BOOL)animated {
//    NSManagedObjectContext *context = [_appDelegate managedObjectContext];
//    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Cart"
//                                              inManagedObjectContext:context];
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    [request setFetchBatchSize:20];
//    [request setEntity:entity];
//    NSError *error;
//    NSMutableArray *results = [[context executeFetchRequest:request
//                                                      error:&error] mutableCopy];
//    [self setArray:results];
//    _foodNameArray = [[NSMutableArray alloc] init];
//    _priceArray = [[NSMutableArray alloc] init];
//    _quantityArray = [[NSMutableArray alloc] init];
//    for (int i=1; i<sizeof(_array); i++) {
//        Cart *info = [_array lastObject];
//        NSLog(info.foodName);
//        [_foodNameArray addObject:info.foodName];
//        [_priceArray addObject:info.price];
//        [_quantityArray addObject:info.quantity];
//    }
//}
//

- (IBAction)placeOrderButtonPressed:(id)sender {
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"CartCell"];
    cell.textLabel.text = _foodNameArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d %d", indexPath.section, indexPath.row);
    [self performSegueWithIdentifier:@"ShowDetails" sender:self];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"KFC";
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        FoodDescriptionViewController *destViewController = segue.destinationViewController;
//        destViewController.foodName = @"Chukwudi's Special Jollof";
//    }
//}

@end
