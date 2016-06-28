//
//  BannerTableViewCell.h
//  BaseClass
//
//  Created by admin on 6/24/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface BannerTableViewCell : BaseTableViewCell {
    __weak IBOutlet UILabel *nameLabel;
    __weak IBOutlet UIImageView *coverView;
    __weak IBOutlet UIButton *installButton;
}

@end
