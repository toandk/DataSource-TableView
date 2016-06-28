//
//  BaseAPITableController.m
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "BaseTVDataSourceController.h"

@implementation BaseTVDataSourceController

- (id) initWithTableView:(UITableView *)targetTable {
    self = [super init];
    if (self) {
        self.items = [NSArray new];
        self.targetTableView = targetTable;
        self.targetTableView.delegate = self;
        self.targetTableView.dataSource = self;
        [self registerNibWithTable:self.targetTableView];
        [self.targetTableView reloadData];
    }
    
    return self;
}

- (id)initWithItems:(NSArray *)anItems
    withTableView:(UITableView*) targetTable
{
    self = [super init];
    if (self) {
        self.items = anItems;
        self.targetTableView = targetTable;
        self.targetTableView.delegate = self;
        self.targetTableView.dataSource = self;
        [self registerNibWithTable:self.targetTableView];
    }
    return self;
}

- (void) registerNibWithTable:(UITableView*)tableView {
    NSAssert(NO, @"This is an abstract method and should be overridden");
}

- (NSString*) getCellIdentifierWithItem:(id)item
                            atIndexPath:(NSIndexPath*)indexPath {
    NSAssert(NO, @"This is an abstract method and should be overridden");
    return nil;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}

#pragma mark UITableViewDataSource
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark UITableViewTableDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemAtIndexPath:indexPath];
    NSString *cellIdentify = [self getCellIdentifierWithItem:item atIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    
    if (!cell) {
        cell = (UITableViewCell*)[[NSClassFromString(cellIdentify) alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
    }
    
    if ([cell respondsToSelector:@selector(setupCellWithData:)]) {
        [(BaseTableViewCell*) cell setupCellWithData:item];
    }
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self itemAtIndexPath:indexPath];
    return [NSClassFromString([self getCellIdentifierWithItem:item atIndexPath:indexPath]) heightWithItem:item];
}
@end
