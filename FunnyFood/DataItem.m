//
//  DataItem.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/13/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "DataItem.h"


@implementation DataItem
-(instancetype) initWithName:(NSString *)name andPrice:(NSString *)price withImage:(NSString *)image andSaleOffPrice:(NSString *)saleOff {
    if (self = [super init]) {
        self.name = name;
        self.price = price;
        self.image = [UIImage imageNamed:image];
        self.saleOff = saleOff;
    }
    return self;
}
@end
