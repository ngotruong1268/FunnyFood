//
//  DetailFood.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/16/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "DetailFood.h"

@interface DetailFood ()

@end

@implementation DetailFood
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.name;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imageFood.image = self.image;
    [self.lblName setText:self.name];
    [self.lblPrice setText:self.price];
    if (![self.saleOff isEqualToString:@""]) {
            [self.lblSaleOff setText:self.saleOff];
    }else {
        [self.SaleOffTitle setText:@""];
        [self.lblSaleOff setText:@""];
    }
    self.lblName.textColor = [UIColor redColor];
    self.lblPrice.textColor = [UIColor redColor];
    self.lblSaleOff.textColor = [UIColor redColor];
}

@end
