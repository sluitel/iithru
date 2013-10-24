//
//  ViewController.m
//  Authentication
//
//  Created by Mingyang Yu on 9/26/13.
//  Copyright (c) 2013 Mingyang Yu. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    FBLoginView *loginView = [[FBLoginView alloc] init];
    // Align the button in the center horizontally
    loginView.frame = CGRectOffset(loginView.frame,(self.view.center.x - (loginView.frame.size.width / 2)),5);
    [self.view addSubview:loginView];
    [loginView sizeToFit];
    loginView =
    [[FBLoginView alloc] initWithReadPermissions:@[@"basic_info", @"email", @"user_likes"]];
	// Do any additional setup after loading the view, typically from a nib.
    PFObject *userInfo = [PFObject objectWithClassName:@"userInfo"];
    userInfo[@"userName"] = @"nickname";
    userInfo[@"userFirstname"] = @"firstname";
    userInfo[@"userLastname"] = @"lastname";
    userInfo[@"password"] = @"hellopass";
    userInfo[@"userEmail"] = @"my@iit.edu";
    [userInfo saveInBackground];
    
    PFQuery *query = [PFQuery queryWithClassName:@"GameScore"];
    [query getObjectInBackgroundWithId:@"jzy6rMUViK" block:^(PFObject *gameScore, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", gameScore);
    }];
    // The InBackground methods are asynchronous, so any code after this will run
    // immediately.  Any code that depends on the query result should be moved
    // inside the completion block above.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    
}



@end
