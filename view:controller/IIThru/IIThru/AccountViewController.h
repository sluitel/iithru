//
//  AccountViewController.h
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "Cart.h"


@interface AccountViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)placeOrderButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (retain, nonatomic) AppDelegate *appDelegate;
@property (nonatomic, retain) NSMutableArray *array;
@property (nonatomic, strong) NSMutableArray *foodNameArray;
@property (nonatomic, strong) NSMutableArray *priceArray;
@property (nonatomic, strong) NSMutableArray *quantityArray;

@end
