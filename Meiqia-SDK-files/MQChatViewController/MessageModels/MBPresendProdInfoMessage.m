//
//  MBPresentProdInfoMessage.m
//  Meiqia-SDK-Demo
//
//  Created by 俊周 on 2020/5/3.
//  Copyright © 2020 Meiqia. All rights reserved.
//

#import "MBPresendProdInfoMessage.h"

@implementation MBPresendProdInfoMessage
- (id)initWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        self.summary = dictionary[@"summary"] ?: @"";
        self.thumbnail = dictionary[@"thumbnail"] ?: @"";
        self.content = dictionary[@"content"] ?: @"";
        self.prodPrice = dictionary[@"prodPrice"] ?: @"";
        self.prodId = dictionary[@"prodId"] ?: @"";
    }
    return self;
}

@end
