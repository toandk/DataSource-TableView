//
//  BaseTableViewCell.h
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

@property (strong, nonatomic) NSIndexPath *indexPath;

+ (UINib *)nib;

+ (NSString*) nibName;

+ (CGFloat) heightWithItem:(id)item;

- (void) setupCellWithData:(id)item;

@end
