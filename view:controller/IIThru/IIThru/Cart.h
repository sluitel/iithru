//
//  Cart.h
//  IIThru
//
//  Created by Subash Luitel on 10/24/13.
//  Copyright (c) 2013 IIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Cart : NSManagedObject

@property (nonatomic, retain) NSString * foodName;
@property (nonatomic, retain) NSNumber * quantity;
@property (nonatomic, retain) NSNumber * price;

@end
