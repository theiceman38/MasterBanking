//
//  WebService.m
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import "WebService.h"

@implementation WebService

@synthesize queue;

#pragma mark - Instance du singletton
/**
 * Retourne l'instance partagee du singletton
 *
 * @return WebService Instance statique de la classe
 */
+ (WebService *)sharedInstance
{
    static WebService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WebService alloc] init];
        sharedInstance.queue = [[NSOperationQueue alloc] init];
    });
    return sharedInstance;
}

#pragma mark - Surcharge AFNetworking
- (void) updateOperationManager:(AFHTTPRequestOperationManager *) manager {
    [manager.responseSerializer setAcceptableContentTypes: [NSSet setWithObjects:@"application/json", @"text/json", @"text/html", @"text/plain", @"text/javascript", nil]];
}

- (void)getBanks:(id)delegate {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [self updateOperationManager: manager];
    
    NSString *url = [NSString stringWithFormat:@"http://www.cinapp.fr/Projets/Test/banks.json"];
    
    [manager GET:url parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             if(delegate != nil && [delegate respondsToSelector:@selector(wsGetBanksCallBack:)])
             {
                 [delegate wsGetBanksCallBack:responseObject];
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"getBanks // Error: %@", error);
         }];
    
    return;
}

@end
