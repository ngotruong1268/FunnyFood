//
//  DetailScreen.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/13/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "DetailScreen.h"
#import "CustomCell.h"
#import "DataItem.h"
#import "DetailFood.h"
#import "DetailCart.h"
@interface DetailScreen ()

@end

@implementation DetailScreen
{
    NSMutableArray *arrayDataItems;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self chooseDataItem];
    [self.tableView reloadData];
    self.title = self.stringTitleDetailScreen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil]
         forCellReuseIdentifier:@"Cell"];
    DetailCart *detailsCart = [DetailCart new];
    detailsCart.arrayCart = [NSMutableArray new];
    self.arrayCart = [NSMutableArray new];
    //self.tableView.backgroundColor = [UIColor lightTextColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"List Cart"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(listCart)];
}

-(void) chooseDataItem {
    if ([self.stringTitleDetailScreen isEqualToString:@"Ice Cream"]) {
        [self createDataIceCream];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Drink"]) {
        [self createDataDrink];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Birthday"]) {
        [self createDataBirthday];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Cookie"]) {
        [self createDataCookie];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Bread"]) {
        [self createDataBread];
        
    } else if ([self.stringTitleDetailScreen isEqualToString:@"Chicken"]) {
        [self createDataChicken];
    }
}

- (void) createDataIceCream {
    
    DataItem *iceCream1 = [[DataItem alloc] initWithName:@"Kem Vani"
                                                andPrice:@"$23"
                                               withImage:@"cream01.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *iceCream2 = [[DataItem alloc] initWithName:@"Kem sữa dừa"
                                                andPrice:@"$12"
                                               withImage:@"cream02.jpg"
                                         andSaleOffPrice:@"-30%"];
    
    DataItem *iceCream3 = [[DataItem alloc] initWithName:@"Kem Rum nho"
                                                andPrice:@"$14"
                                               withImage:@"cream03.jpg"
                                         andSaleOffPrice:@"-10%"];
    
    DataItem *iceCream4 = [[DataItem alloc] initWithName:@"Kem Caramel Hạnh nhân"
                                                andPrice:@"$15"
                                               withImage:@"cream04.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *iceCream5 = [[DataItem alloc] initWithName:@"Kem tuyết Cappuccino"
                                                andPrice:@"$13"
                                               withImage:@"cream05.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *iceCream6 = [[DataItem alloc] initWithName:@"Mocha Chocolate"
                                                andPrice:@"$24"
                                               withImage:@"cream06.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *iceCream7 = [[DataItem alloc] initWithName:@"Kem tuyết xoài"
                                                andPrice:@"$26"
                                               withImage:@"cream07.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *iceCream8 = [[DataItem alloc] initWithName:@"Kem tuyết dâu tây"
                                                andPrice:@"$9"
                                               withImage:@"cream08.jpg"
                                         andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:iceCream1, iceCream2, iceCream3, iceCream4, iceCream5, iceCream6, iceCream7, iceCream8, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }
}

- (void) createDataChicken {
    
    DataItem *chicken = [[DataItem alloc] initWithName:@"Gà nướng cả con"
                                              andPrice:@"$100"
                                             withImage:@"chicken0.jpeg"
                                       andSaleOffPrice:@""];
    
    DataItem *chicken2 = [[DataItem alloc] initWithName:@"Gà rang muối"
                                               andPrice:@"$90"
                                              withImage:@"chicken1.jpg"
                                        andSaleOffPrice:@"-30%"];
    
    DataItem *chicken3 = [[DataItem alloc] initWithName:@"Đùi gà chiên giòn"
                                               andPrice:@"$50"
                                              withImage:@"chicken2.jpg"
                                        andSaleOffPrice:@"-10%"];
    
    DataItem *chicken4 = [[DataItem alloc] initWithName:@"Gà chua ngọt"
                                               andPrice:@"$120"
                                              withImage:@"chicken3.jpg"
                                        andSaleOffPrice:@""];
    
    DataItem *chicken5 = [[DataItem alloc] initWithName:@"Gà hầm thuốc bắc"
                                               andPrice:@"$200"
                                              withImage:@"chicken4.jpg"
                                        andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:chicken, chicken2, chicken3, chicken4, chicken5, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }
}

- (void) createDataDrink {
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Cà phê American"
                                             andPrice:@"$23"
                                            withImage:@"drink01.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Espresso"
                                             andPrice:@"$24"
                                            withImage:@"drink02.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *drink3 = [[DataItem alloc] initWithName:@"Cappuccino"
                                             andPrice:@"$28"
                                            withImage:@"drink03.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *drink4 = [[DataItem alloc] initWithName:@"Techmaster Café"
                                             andPrice:@"$27"
                                            withImage:@"drink04.jpg"
                                      andSaleOffPrice:@"free"];
    
    DataItem *drink5 = [[DataItem alloc] initWithName:@"Hồng trà Srilanca"
                                             andPrice:@"$17"
                                            withImage:@"drink05.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *drink6 = [[DataItem alloc] initWithName:@"Hồng trà Bá Tước"
                                             andPrice:@"$29"
                                            withImage:@"drink06.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *drink7 = [[DataItem alloc] initWithName:@"Hồng trà đào"
                                             andPrice:@"$33"
                                            withImage:@"drink07.jpg"
                                      andSaleOffPrice:@"free"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:drink1, drink2, drink3, drink4, drink5, drink6, drink7, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }
}

- (void) createDataBirthday {
    DataItem *birthday1 = [[DataItem alloc] initWithName:@"Opera"
                                                andPrice:@"$12"
                                               withImage:@"birthday01.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday2 = [[DataItem alloc] initWithName:@"Tiramisu"
                                                andPrice:@"$23"
                                               withImage:@"birthday02.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday3 = [[DataItem alloc] initWithName:@"Đại ngàn"
                                                andPrice:@"$13"
                                               withImage:@"birthday03.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday4 = [[DataItem alloc] initWithName:@"Caramel"
                                                andPrice:@"$25"
                                               withImage:@"birthday04.jpg"
                                         andSaleOffPrice:@"-20%"];
    
    DataItem *birthday5 = [[DataItem alloc] initWithName:@"Thời đại hoàng kim"
                                                andPrice:@"$8"
                                               withImage:@"birthday05.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday6 = [[DataItem alloc] initWithName:@"Nho dâu tây xanh"
                                                andPrice:@"$15"
                                               withImage:@"birthday06.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday7 = [[DataItem alloc] initWithName:@"Ngọn lửa tình yêu"
                                                andPrice:@"$18"
                                               withImage:@"birthday07.jpg"
                                         andSaleOffPrice:@"-10%"];
    
    DataItem *birthday8 = [[DataItem alloc] initWithName:@"Dâu tây pha lê"
                                                andPrice:@"$18"
                                               withImage:@"birthday08.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday9 = [[DataItem alloc] initWithName:@"Cà phê Ai-len"
                                                andPrice:@"$32"
                                               withImage:@"birthday09.jpg"
                                         andSaleOffPrice:@""];
    
    DataItem *birthday10 = [[DataItem alloc] initWithName:@"Gấu Pooh"
                                                 andPrice:@"$20"
                                                withImage:@"birthday10.jpg"
                                          andSaleOffPrice:@""];
    
    DataItem *birthday11 = [[DataItem alloc] initWithName:@"Nhím gai"
                                                 andPrice:@"$11"
                                                withImage:@"birthday11.jpg"
                                          andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:birthday1, birthday2, birthday3, birthday4, birthday5, birthday6, birthday7, birthday8, birthday9, birthday10, birthday11, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }}

- (void) createDataCookie {
    DataItem *cookie1 = [[DataItem alloc] initWithName:@"Hạt Điều Napoleon"
                                              andPrice:@"$11"
                                             withImage:@"cookies01.jpg"
                                       andSaleOffPrice:@""];
    
    DataItem *cookie2 = [[DataItem alloc] initWithName:@"Sôcôla Skate"
                                              andPrice:@"$5"
                                             withImage:@"cookies02.jpg"
                                       andSaleOffPrice:@""];
    
    DataItem *cookie3 = [[DataItem alloc] initWithName:@"Hạnh nhân mật ong"
                                              andPrice:@"$8"
                                             withImage:@"cookies03.jpg"
                                       andSaleOffPrice:@"-20%"];
    
    DataItem *cookie4 = [[DataItem alloc] initWithName:@"Sôcôla Chip"
                                              andPrice:@"$12"
                                             withImage:@"cookies04.jpg"
                                       andSaleOffPrice:@""];
    
    DataItem *cookie5 = [[DataItem alloc] initWithName:@"Cookie Cà phê"
                                              andPrice:@"$7"
                                             withImage:@"cookies05.jpg"
                                       andSaleOffPrice:@""];
    
    DataItem *cookie6 = [[DataItem alloc] initWithName:@"Cookie Ngũ cốc"
                                              andPrice:@"$9"
                                             withImage:@"cookies06.jpg"
                                       andSaleOffPrice:@""];
    
    DataItem *cookie7 = [[DataItem alloc] initWithName:@"Feng Li Nguyên vị"
                                              andPrice:@"$11"
                                             withImage:@"cookies07.jpg"
                                       andSaleOffPrice:@""];
    DataItem *cookie8 = [[DataItem alloc] initWithName:@"Feng Li Cà phê"
                                              andPrice:@"$10"
                                             withImage:@"cookies08.jpg"
                                       andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:cookie1, cookie2, cookie3, cookie4, cookie5, cookie6, cookie7, cookie8, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }}

- (void) createDataBread {
    DataItem *bread1 = [[DataItem alloc] initWithName:@"Donut"
                                             andPrice:@"$3"
                                            withImage:@"bread01.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread2 = [[DataItem alloc] initWithName:@"Puoluo"
                                             andPrice:@"$5"
                                            withImage:@"bread02.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread3 = [[DataItem alloc] initWithName:@"Croissants"
                                             andPrice:@"$10"
                                            withImage:@"bread03.jpg"
                                      andSaleOffPrice:@"-20%"];
    
    DataItem *bread4 = [[DataItem alloc] initWithName:@"Cà phê Đan Mạch"
                                             andPrice:@"$7"
                                            withImage:@"bread04.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread5 = [[DataItem alloc] initWithName:@"Dâu tây xanh Đan Mạch"
                                             andPrice:@"$6"
                                            withImage:@"bread05.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread6 = [[DataItem alloc] initWithName:@"Bánh Táo Đan Mạch"
                                             andPrice:@"$9"
                                            withImage:@"bread06.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread7 = [[DataItem alloc] initWithName:@"Vua Hokkaido"
                                             andPrice:@"$4"
                                            withImage:@"bread07.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread8 = [[DataItem alloc] initWithName:@"Cranberry"
                                             andPrice:@"$6"
                                            withImage:@"bread08.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread9 = [[DataItem alloc] initWithName:@"Sôcôla Thụy Sĩ"
                                             andPrice:@"$12"
                                            withImage:@"bread09.jpg"
                                      andSaleOffPrice:@""];
    
    DataItem *bread10 = [[DataItem alloc] initWithName:@"Mochi Cà phê"
                                              andPrice:@"$7"
                                             withImage:@"bread10.jpg"
                                       andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:bread1, bread2, bread3, bread4, bread5, bread6, bread7, bread8, bread9, bread10, nil];
    for (DataItem *dt in arrayDataItems) {
        if (![dt.saleOff isEqualToString:@""]) {
            [self.arraySaleOff addObject:dt];
        }
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayDataItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell"forIndexPath:indexPath];
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    UIImage *accImage = [UIImage imageNamed:@"cart.png"];
    [accessoryButton setImage:accImage forState:UIControlStateNormal];
    [cell setAccessoryView:accessoryButton];
    [accessoryButton addTarget: self
                        action: @selector(accessoryButtonTapped:event:)
     forControlEvents: UIControlEventTouchUpInside];
    DataItem *dataItem = [DataItem new];
    dataItem = arrayDataItems[indexPath.row];
    cell.lblName.text = dataItem.name;
    cell.lblPrice.text = dataItem.price;
    cell.lblSaleOff.text = dataItem.saleOff;
    cell.imgViewThumbnail.image = dataItem.image;
    
    //NSLog(@"%@- %@",cell.lblName.text,cell.lblPrice.text);
    return cell;
}

-(void) listCart {
    DetailCart *detailCart = [DetailCart new];
    detailCart.arrayCart = self.arrayCart;
    
    [self.navigationController pushViewController:detailCart animated:true];
    [self.tableView reloadData];
    
    
}
- (void) accessoryButtonTapped:(id)sender event:(id)event
{
    NSSet *touches = [event allTouches];
    UITouch *touch = [touches anyObject];
    CGPoint currentTouchPosition = [touch locationInView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint: currentTouchPosition];
    
    DataItem *dataItem = [DataItem new];
    dataItem = arrayDataItems[indexPath.row];
    [self.arrayCart addObject:dataItem];
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Successfully"
                                  message:[NSString stringWithFormat:@"You added %@ to list cart",dataItem.name]
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    //NSLog(@"%@ - %@",dataItem.name,dataItem.price);
    
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DataItem *dataItem = [DataItem new];
    dataItem = arrayDataItems[indexPath.row];
    DetailFood *detaiLFood = [[DetailFood alloc] init];
    
    detaiLFood.image = dataItem.image;
    detaiLFood.name = dataItem.name;
    detaiLFood.price = dataItem.price;
    detaiLFood.saleOff = dataItem.saleOff;
    
    [self.navigationController pushViewController:detaiLFood animated:true];
    
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

@end
