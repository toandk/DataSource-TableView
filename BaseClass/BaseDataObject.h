//
//  BaseDataObject.h
//  BaseClass
//
//  Created by admin on 5/26/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseDataObject : NSObject

@property (nonatomic, strong) NSDictionary *dictData;

- (id)initWithData:(NSDictionary *)data;

- (id)objectForKey:(NSString*)key;

@end
