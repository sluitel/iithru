//
//  QRViewController.h
//  QR Generator
//
//  Created by Subash Luitel on 9/17/13.
//  Copyright (c) 2013 Subash Luitel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QRViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *QRWebView;

- (IBAction)generateQRCodeButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *QRLabel;
@property (weak, nonatomic) IBOutlet UIButton *generateQRCodeButton;
-(void)generateQRCode;

@end
