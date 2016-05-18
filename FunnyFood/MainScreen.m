//
//  MainScreen.m
//  FunnyFood
//
//  Created by Ngô Sỹ Trường on 5/12/16.
//  Copyright © 2016 ngotruong. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreen.h"
#import "SaleOffScreen.h"

@interface MainScreen ()
@property (strong,nonatomic) DetailScreen *detailScreen;
@end

@implementation MainScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:nil];
    
}
- (IBAction)btnDrink:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

- (IBAction)btnBirthday:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Birthday";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

- (IBAction)btnBread:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

- (IBAction)btnIceCream:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Ice Cream";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

- (IBAction)btnChicken:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Chicken";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

- (IBAction)btnCookie:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [DetailScreen new];
    }
    self.detailScreen.stringTitleDetailScreen = @"Cookie";
    [self.navigationController pushViewController:self.detailScreen
                                         animated:true];
}

@end
