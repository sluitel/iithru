//
//  FoodDescriptionViewController.h
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodDescriptionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *foodTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *spiceLevelLabel;
@property (weak, nonatomic) IBOutlet UILabel *caloriesLabel;
@property (weak, nonatomic) IBOutlet UITextView *foodDescriptionTextField;
- (IBAction)iWantItButtonPressed:(id)sender;
@property (strong, nonatomic) NSString *foodName;


@end
