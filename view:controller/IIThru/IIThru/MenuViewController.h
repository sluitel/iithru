//
//  MenuViewController.h
//  IIThru
//
//  Created by Subash Luitel on 10/23/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodDescriptionViewController.h"

@interface MenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
