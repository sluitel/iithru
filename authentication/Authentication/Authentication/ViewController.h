//
//  ViewController.h
//  Authentication
//
//  Created by Mingyang Yu on 9/26/13.
//  Copyright (c) 2013 Mingyang Yu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import <Parse/Parse.h>

@interface ViewController : UIViewController <FBLoginViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)loginButton:(id)sender;

@end
