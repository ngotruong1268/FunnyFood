//
//  DetailScreen.h
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/13/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailScreen : UITableViewController
@property (nonatomic,strong) NSString *stringTitleDetailScreen;
@property (nonatomic,strong) NSMutableArray *arraySaleOff;
@property (nonatomic,strong) NSString *saleOff;
@property (nonatomic,strong) NSMutableArray *arrayCart;

- (void) createDataIceCream;
- (void) createDataChicken;
- (void) createDataDrink;
- (void) createDataBirthday;
- (void) createDataCookie;
- (void) createDataBread;
@end
