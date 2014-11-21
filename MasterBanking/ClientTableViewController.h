//
//  ClientTableViewController.h
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Client.h"

@interface ClientTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *clients;

@end
