//
//  SaleOffScreen.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/12/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "SaleOffScreen.h"
#import "DataItem.h"
#import "CustomCell.h"
#import "DetailScreen.h"
#import "DetailCart.h"
#import "DetailFood.h"

@interface SaleOffScreen ()

@end

@implementation SaleOffScreen
{
    //NSMutableArray *arrayDataItems;
    DetailScreen *detail;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil]
         forCellReuseIdentifier:@"Cell"];
    detail = [DetailScreen new];
    detail.arraySaleOff = [NSMutableArray new];
    DetailCart *detailsCart = [DetailCart new];
    detailsCart.arrayCart = [NSMutableArray new];
    self.arrayCart = [NSMutableArray new];
    
    [self invokeFunc];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"List Cart"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(listCart)];
    [self.tableView reloadData];
    
    
}
- (void) invokeFunc  {
    [detail createDataIceCream];
    [detail createDataDrink];
    [detail createDataChicken];
    [detail createDataCookie];
    [detail createDataBread];
    [detail createDataBirthday];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return detail.arraySaleOff.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell"forIndexPath:indexPath];
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    UIImage *accImage = [UIImage imageNamed:@"cart.png"];
    [accessoryButton setImage:accImage forState: UIControlStateNormal];
    [cell setAccessoryView:accessoryButton];
    [accessoryButton addTarget: self
                        action: @selector(accessoryButtonTapped:event:)
              forControlEvents: UIControlEventTouchUpInside];
    DataItem *dataItem = [DataItem new];
    dataItem = detail.arraySaleOff[indexPath.row];
    cell.lblName.text = dataItem.name;
    cell.lblPrice.text = dataItem.price;
    cell.lblSaleOff.text = dataItem.saleOff;
    cell.imgViewThumbnail.image = dataItem.image;
    
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
    dataItem = detail.arraySaleOff[indexPath.row];
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
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DataItem *dataItem = [DataItem new];
    dataItem = detail.arraySaleOff[indexPath.row];
    DetailFood *detaiLFood = [[DetailFood alloc] init];
    
    detaiLFood.image = dataItem.image;
    detaiLFood.name = dataItem.name;
    detaiLFood.price = dataItem.price;
    detaiLFood.saleOff = dataItem.saleOff;
    
    [self.navigationController pushViewController:detaiLFood animated:true];
    
}
@end
