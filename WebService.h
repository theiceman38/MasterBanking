//
//  WebService.h
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

#import "DetailViewController.h"

@interface WebService : NSObject {
    NSOperationQueue *queue;
}

@property (nonatomic, strong) NSOperationQueue *queue;

// Retourne l'objet partagé du singletton
+ (id)sharedInstance;

- (void) getBanks:(id)delegate;

@end

@protocol WebServiceDelegate <NSObject>

@optional

- (void) wsGetBanksCallBack:(NSDictionary*)banksDict;

@end