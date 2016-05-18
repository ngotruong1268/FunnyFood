//
//  DataItem.h
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/13/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataItem : NSObject
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *price;
@property(nonatomic,strong) UIImage *image;
@property(nonatomic,strong) NSString *saleOff;

-(instancetype) initWithName : (NSString*) name
                     andPrice: (NSString*) price
                   withImage : (NSString*) image
              andSaleOffPrice: (NSString*) saleOff ;

@end
