//
//  MBPresendProdInfoCellModel.h
//  Meiqia-SDK-Demo
//
//  Created by 俊周 on 2020/5/3.
//  Copyright © 2020 Meiqia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MQCellModelProtocol.h"
@class MBPresendProdInfoMessage;
@interface MBPresendProdInfoCellModel : NSObject <MQCellModelProtocol>
@property (nonatomic, strong)MBPresendProdInfoMessage *message;
- (id)initCellModelWithMessage:(MBPresendProdInfoMessage *)message cellWidth:(CGFloat)cellWidth delegate:(id<MQCellModelDelegate>)delegator;
@end
