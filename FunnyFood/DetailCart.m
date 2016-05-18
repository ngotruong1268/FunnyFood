//
//  DetailCart.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/16/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "DetailCart.h"
#import "DataItem.h"
#import "CustomCell.h"
#import "DetailScreen.h"
@interface DetailCart ()

@end

@implementation DetailCart
{
    DetailScreen *detail;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil]
         forCellReuseIdentifier:@"Cell"];
    detail = [DetailScreen new];
    [self invokeFunc];
    [self.tableView reloadData];
    
}


#pragma mark - Table view data source

- (void) invokeFunc  {
    [detail createDataIceCream];
    [detail createDataDrink];
    [detail createDataChicken];
    [detail createDataCookie];
    [detail createDataBread];
    [detail createDataBirthday];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.arrayCart.count;
}

- (void) accessoryButtonTapped:(id)sender event:(id)event
{
    
    NSSet *touches = [event allTouches];
    UITouch *touch = [touches anyObject];
    CGPoint currentTouchPosition = [touch locationInView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint: currentTouchPosition];
    
    [self.arrayCart removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Successfully"
                                  message:@"You deleted successfully."
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell"forIndexPath:indexPath];
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    UIImage *accImage = [UIImage imageNamed:@"delete"];
    [accessoryButton setImage:accImage forState: UIControlStateNormal];
    [cell setAccessoryView:accessoryButton];
    [accessoryButton addTarget: self
                        action: @selector(accessoryButtonTapped:event:)
              forControlEvents: UIControlEventTouchUpInside];
    DataItem *dataItem = [DataItem new];
    dataItem = self.arrayCart[indexPath.row];
    cell.lblName.text = dataItem.name;
    cell.lblPrice.text = dataItem.price;
    cell.lblSaleOff.text = dataItem.saleOff;
    cell.imgViewThumbnail.image = dataItem.image;
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}
@end
