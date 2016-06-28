//
//  SampleViewController.m
//  BaseClass
//
//  Created by admin on 6/24/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "SampleViewController.h"
#import "SampleTVDataSourceController.h"

@interface SampleViewController () {
    SampleTVDataSourceController *tvDatasourceController;
}

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"DataSource Sample";

    [self setupController];
}

- (void) setupController {
    tvDatasourceController = [[SampleTVDataSourceController alloc] initWithTableView:_tableView];
}

@end
