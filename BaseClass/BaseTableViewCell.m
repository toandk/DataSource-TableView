//
//  BaseTableViewCell.m
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

+ (UINib *)nib {
    return [UINib nibWithNibName:[self nibName] bundle:[NSBundle mainBundle]];
}

+ (NSString*) nibName {
    return NSStringFromClass([self class]);
}

+ (CGFloat) heightWithItem:(id)item {
    
    return 44;
}

- (void) setupCellWithData:(id)item {
    
}

@end
