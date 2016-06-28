//
//  NormalTableViewCell.m
//  BaseClass
//
//  Created by admin on 6/24/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "NormalTableViewCell.h"
#import "NormalItemData.h"

@implementation NormalTableViewCell

- (void)setupCellWithData:(id)item {
    NormalItemData *normalData = item;
    nameLabel.text = [NSString stringWithFormat:@"normal cell %@", [normalData objectForKey:@"name"]];
}

+ (CGFloat) heightWithItem:(id)item {
    return 44;
}

@end
