//
//  MasterTableViewController.h
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebService.h"
#import "Bank.h"

@interface MasterTableViewController : UITableViewController <WebServiceDelegate>

@property (nonatomic, strong) NSMutableArray *banks;

@end
