//
//  BaseDataObject.m
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "BaseDataObject.h"

@implementation BaseDataObject

- (id)initWithData:(NSDictionary *)data {
    if (self = [super init]) {
        self.dictData = data;
    }
    return self;
}

- (id)objectForKey:(NSString*)key {
    return self.dictData[key];
}

@end
