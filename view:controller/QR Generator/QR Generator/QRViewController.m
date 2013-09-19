//
//  QRViewController.m
//  QR Generator
//
//  Created by Subash Luitel on 9/17/13.
//  Copyright (c) 2013 Subash Luitel. All rights reserved.
//

#import "QRViewController.h"

@interface QRViewController () {
    int randomNumber;
}

@end

@implementation QRViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    randomNumber = (arc4random() % 9999999999) + 1;
	_generateQRCodeButton.backgroundColor = [UIColor brownColor];
    NSString *url=[NSString stringWithFormat:@"https://chart.googleapis.com/chart?chs=280x280&cht=qr&chl=%d&choe=UTF-8", randomNumber];
    url=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    _QRLabel.text = [NSString stringWithFormat:@"%d",randomNumber];
    
    //Create a URL object.
    NSURL *Curl=[NSURL URLWithString:url];
    //URL Requst Object
    NSURLRequest *request = [NSURLRequest requestWithURL:Curl];
    //Load the request in the UIWebView.
    [_QRWebView loadRequest:request];
    
   
}


- (IBAction)generateQRCodeButtonPressed:(id)sender {
    randomNumber = (arc4random() % 9999999999) + 1;
    self.generateQRCode;
}

-(void)generateQRCode {
    randomNumber = (arc4random() % 9999999999) + 1;
	_generateQRCodeButton.backgroundColor = [UIColor brownColor];
    NSString *url=[NSString stringWithFormat:@"https://chart.googleapis.com/chart?chs=280x280&cht=qr&chl=%d&choe=UTF-8", randomNumber];
    url=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    _QRLabel.text = [NSString stringWithFormat:@"%d",randomNumber];
    
    //Create a URL object.
    NSURL *Curl=[NSURL URLWithString:url];
    //URL Requst Object
    NSURLRequest *request = [NSURLRequest requestWithURL:Curl];
    //Load the request in the UIWebView.
    [_QRWebView loadRequest:request];
}
@end
