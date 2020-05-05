//
//  MBPresendProdInfoCell.m
//  Meiqia-SDK-Demo
//
//  Created by 俊周 on 2020/5/3.
//  Copyright © 2020 Meiqia. All rights reserved.
//

#import "MBPresendProdInfoCell.h"
#import "MBPresendProdInfoCellModel.h"
#import "MBPresendProdInfoMessage.h"
@interface MBPresendProdInfoCell()
@property (weak, nonatomic) IBOutlet UIImageView *prodImageView;
@property (weak, nonatomic) IBOutlet UILabel *prodIntroLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceUnitSymbol;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
@property (nonatomic, strong) MBPresendProdInfoCellModel *cellModel;
@end

@implementation MBPresendProdInfoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _prodIntroLabel.textColor = [UIColor blackColor];
    _priceUnitSymbol.textColor = [UIColor redColor];
    _priceLabel.textColor = _priceUnitSymbol.textColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)sendProdInfoAction:(UIButton *)sender {
    
}

- (void)updateCellWithCellModel:(id<MQCellModelProtocol>)model {
    self.cellModel = model;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString: self.cellModel.message.thumbnail]];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.prodImageView.image = [UIImage imageWithData: imageData];
        });
    });
    
    _prodIntroLabel.text = self.cellModel.message.content;
    _priceLabel.text = self.cellModel.message.prodPrice;
}
@end
