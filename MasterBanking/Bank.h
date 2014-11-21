//
//  Bank.h
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

#import "Client.h"

@interface Bank : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *email;
@property CLLocationCoordinate2D location;
@property (nonatomic, strong) NSMutableArray *clients;

+ (Bank*)instanceFromDictionary:(NSDictionary*)dictionary;

@end
