//
//  FoodDescriptionViewController.m
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "FoodDescriptionViewController.h"

@interface FoodDescriptionViewController ()

@end

@implementation FoodDescriptionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
}


- (IBAction)iWantItButtonPressed:(id)sender {
    NSManagedObjectContext *context = [_appDelegate managedObjectContext];
    Cart *detail = [NSEntityDescription insertNewObjectForEntityForName:@"Cart"
                                                      inManagedObjectContext:context];
    detail.foodName = _foodName;
    detail.quantity = @1;
    detail.price = @9.8;
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Error, Fool!");
    }
    
    [self dismissViewControllerAnimated:YES completion:Nil];

}
@end
