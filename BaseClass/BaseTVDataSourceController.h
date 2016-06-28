//
//  BaseAPITableController.h
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTableViewCell.h"

@interface BaseTVDataSourceController : NSObject<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate> {
    
}
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, retain) UITableView *targetTableView;

- (id) initWithTableView:(UITableView *)targetTable;

- (id)initWithItems:(NSArray *)anItems
    withTableView:(UITableView*) targetTable;

- (void) registerNibWithTable:(UITableView*)tableView;

- (NSString*) getCellIdentifierWithItem:(id)item
                            atIndexPath:(NSIndexPath*)indexPath;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
