//
//  CustomCell.h
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/13/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgViewThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblSaleOff;

@end
