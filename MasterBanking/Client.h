//
//  Client.h
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Client : NSObject

@property (nonatomic, strong) NSString *numberClient;
@property (nonatomic, strong) NSString *dateClient;

+ (Client*)instanceFromDictionary:(NSDictionary*)dictionary;

@end
