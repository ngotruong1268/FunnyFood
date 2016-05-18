//
//  DetailFood.h
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/16/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailFood : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageFood;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblSaleOff;
@property (weak, nonatomic) IBOutlet UILabel *SaleOffTitle;

@property(strong,nonatomic) UIImage *image;
@property(strong,nonatomic) NSString *name;
@property(strong,nonatomic) NSString *price;
@property(strong,nonatomic) NSString *saleOff;
@end
