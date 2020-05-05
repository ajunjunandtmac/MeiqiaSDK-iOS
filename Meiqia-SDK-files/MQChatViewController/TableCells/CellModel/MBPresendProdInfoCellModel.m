//
//  MBPresendProdInfoCellModel.m
//  Meiqia-SDK-Demo
//
//  Created by 俊周 on 2020/5/3.
//  Copyright © 2020 Meiqia. All rights reserved.
//

#import "MBPresendProdInfoCellModel.h"
#import "MBPresendProdInfoMessage.h"
#import "MBPresendProdInfoCell.h"
#import "MBPresendProdInfoMessage.h"
@interface MBPresendProdInfoCellModel()

@end
@implementation MBPresendProdInfoCellModel

- (id)initCellModelWithMessage:(MBPresendProdInfoMessage *)message cellWidth:(CGFloat)cellWidth delegate:(id<MQCellModelDelegate>)delegator {
    if (self = [super init]) {
        self.message = message;
    }
    return self;
}

#pragma mark -

- (void)didEvaluate {

}

- (CGFloat)getCellHeight {
    return 120;
}

- (MBPresendProdInfoCell *)getCellWithReuseIdentifier:(NSString *)cellReuseIdentifer {
    NSBundle *bundle = [NSBundle bundleForClass: [self class]];
    NSURL *url = [bundle URLForResource:@"MQChatViewAsset" withExtension:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL:url];
    MBPresendProdInfoCell *cell = [[resourceBundle loadNibNamed:@"MBPresendProdInfoCell" owner:nil options:nil] lastObject];
    return cell;
}

- (NSDate *)getCellDate {
    return self.message.date;
}

- (BOOL)isServiceRelatedCell {
    return true;
}

- (NSString *)getCellMessageId {
    return self.message.messageId;
}

- (void)updateCellSendStatus:(MQChatMessageSendStatus)sendStatus {
    self.message.sendStatus = sendStatus;
}

- (void)updateCellMessageId:(NSString *)messageId {
    self.message.messageId = messageId;
}

- (void)updateCellMessageDate:(NSDate *)messageDate {
    self.message.date = messageDate;
}

- (void)updateCellFrameWithCellWidth:(CGFloat)cellWidth {
}
@end
