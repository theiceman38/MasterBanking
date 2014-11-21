//
//  DetailViewController.m
//  MasterBanking
//
//  Created by Olivier Tavel on 21/11/2014.
//  Copyright (c) 2014 CPE. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.name.text = self.bank.name;
    self.address.text = self.bank.address;
    self.phone.text = self.bank.phoneNumber;
    self.email.text = self.bank.email;
    
    CLLocationCoordinate2D coord = self.bank.location;
    //latLab.text = [NSString stringWithFormat:@"%f", coord.latitude];
    //longLab.text = [NSString stringWithFormat:@"%f", coord.longitude];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 10000, 10000);
    [self.map setRegion:region];
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = coord;
    point.title = self.bank.name;
    [self.map addAnnotation:point];
    [self.map selectAnnotation:point animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"ShowClientBank"]) {
        ClientTableViewController *bankDetailVC = segue.destinationViewController;
        bankDetailVC.clients = self.bank.clients;
    }
}

@end
