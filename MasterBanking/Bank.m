//
//  Bank.m
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import "Bank.h"

@implementation Bank

+ (Bank*)instanceFromDictionary:(NSDictionary*)dictionary {
    Bank *instance = [[Bank alloc] init];
    CLLocationCoordinate2D coord;
    
    for (NSString *key in dictionary) {
        if ([key isEqualToString:@"name"]) {
            [instance setName:[dictionary objectForKey:key]];
        } else if ([key isEqualToString:@"address"]) {
            [instance setAddress:[dictionary objectForKey:key]];
        } else if ([key isEqualToString:@"phone_number"]) {
            [instance setPhoneNumber:[dictionary objectForKey:key]];
        } else if ([key isEqualToString:@"email"]) {
            [instance setEmail:[dictionary objectForKey:key]];
        } else if ([key isEqualToString:@"longitude"]) {
            coord.longitude = [[dictionary objectForKey:key] doubleValue];
        } else if ([key isEqualToString:@"latitude"]) {
            coord.latitude = [[dictionary objectForKey:key] doubleValue];
        } else if ([key isEqualToString:@"clients"]) {
            
        }
    }
    
    [instance setLocation:coord];
    
    return instance;
}

@end
