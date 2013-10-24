//
//  QRCodeViewController.m
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import "QRCodeViewController.h"

@interface QRCodeViewController ()

@end

@implementation QRCodeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	int randomNumber = (arc4random() % 9999999999) + 1;
    NSString *url=[NSString stringWithFormat:@"https://chart.googleapis.com/chart?chs=280x280&cht=qr&chl=%d&choe=UTF-8", randomNumber];
    url=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    //Create a URL object.
    NSURL *Curl=[NSURL URLWithString:url];
    //URL Requst Object
    NSURLRequest *request = [NSURLRequest requestWithURL:Curl];
    //Load the request in the UIWebView.
    [_webView loadRequest:request];
}


- (IBAction)doneButtonPressed:(id)sender {
}
@end
