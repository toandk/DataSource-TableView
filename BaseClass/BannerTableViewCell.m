//
//  BannerTableViewCell.m
//  BaseClass
//
//  Created by admin on 6/24/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "BannerTableViewCell.h"
#import "BannerDataObject.h"

@implementation BannerTableViewCell

- (void)setupCellWithData:(id)item {
    BannerDataObject *bannerData = item;
    nameLabel.text = [NSString stringWithFormat:@"banner %@", [bannerData objectForKey:@"name"]];
}

+ (CGFloat) heightWithItem:(id)item {
    return 240;
}

@end
