//
//  BaseTVDataSourceController.m
//  BaseClass
//
//  Created by admin on 6/24/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "SampleTVDataSourceController.h"
#import "BaseTableViewCell.h"
#import "NormalTableViewCell.h"
#import "BannerTableViewCell.h"
#import "BannerDataObject.h"
#import "NormalItemData.h"

@interface SampleTVDataSourceController() <UITableViewDataSource, UITableViewDelegate> {

}

@end

@implementation SampleTVDataSourceController

- (id)initWithTableView:(UITableView*)tableView {
    if (self = [super initWithTableView:tableView]) {
        [self getListItems];
    }
    return self;
}

- (void)getListItems {
    self.items = @[[[NormalItemData alloc] initWithData:@{@"name": @"item 1"}],
                   [[NormalItemData alloc] initWithData:@{@"name": @"item 2"}],
                   [[NormalItemData alloc] initWithData:@{@"name": @"item 3"}],
                   [[BannerDataObject alloc] initWithData:@{@"name": @"item 4"}],
                   [[NormalItemData alloc] initWithData:@{@"name": @"item 5"}],
                   [[BannerDataObject alloc] initWithData:@{@"name": @"item 6"}]];
    [self.targetTableView reloadData];
}

- (void) registerNibWithTable:(UITableView*)tableView {
    [tableView registerNib:[NormalTableViewCell nib] forCellReuseIdentifier:[NormalTableViewCell nibName]];
    [tableView registerNib:[BannerTableViewCell nib] forCellReuseIdentifier:[BannerTableViewCell nibName]];
}

- (NSString*) getCellIdentifierWithItem:(id)item
                            atIndexPath:(NSIndexPath*)indexPath {
    if ([item isKindOfClass:[NormalItemData class]])
        return [NormalTableViewCell nibName];
    else return [BannerTableViewCell nibName];
}

@end
