//
//  Client.m
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import "Client.h"

@implementation Client

+ (Client*)instanceFromDictionary:(NSDictionary*)dictionary {
    Client *instance = [[Client alloc] init];
    
    for (NSString *key in dictionary) {
        if ([key isEqualToString:@"client_number"]) {
            [instance setNumberClient:[dictionary objectForKey:key]];
        } else if ([key isEqualToString:@"date"]) {
            [instance setDateClient:[dictionary objectForKey:key]];
        }
    }
    
    return instance;
}


@end
