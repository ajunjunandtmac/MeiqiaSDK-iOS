//
//  MBPresentProdInfoMessage.h
//  Meiqia-SDK-Demo
//
//  Created by 俊周 on 2020/5/3.
//  Copyright © 2020 Meiqia. All rights reserved.
//

#import "MQBaseMessage.h"
#import "MQRichTextMessage.h"
@interface MBPresendProdInfoMessage: MQRichTextMessage
@property(nonatomic, copy)NSString *prodPrice;
@property(nonatomic, copy)NSString *prodId;
@end
